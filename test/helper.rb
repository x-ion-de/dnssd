require 'minitest/autorun'
require 'dnssd'
require 'socket'
require 'thread'
require 'monitor'
require 'securerandom'
require 'timeout'

HAS_BLACKJACK = Socket.getservbyname('blackjack') rescue false

class Latch
  def initialize(count = 1)
    @count = count
    @lock = Monitor.new
    @cv = @lock.new_cond
  end

  def release
    @lock.synchronize do
      @count -= 1 if @count > 0
      @cv.broadcast if @count.zero?
    end
  end

  def await
    @lock.synchronize do
      @cv.wait_while { @count > 0 }
    end
  end
end

module DNSSD
  class Test < Minitest::Test
    if HAS_BLACKJACK
      def stub klass, method, ret
        yield
      end
    else
      require 'minitest/mock'
      def stub klass, method, ret
        klass.stub method, ret do
          yield
        end
      end
    end
  end
end
