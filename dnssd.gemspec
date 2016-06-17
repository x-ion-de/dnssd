Gem::Specification.new do |s|
  s.name        = 'dnssd'
  s.version     = '3.0.2'
  s.authors     = ['tenderlove']
  s.email       = 'b.pieck@x-ion.de'
  s.homepage    = 'https://github.com/x-ion-de/dnssd'
  s.summary     = 'added some small extensions to original gem: https://github.com/tenderlove/dnssd'
  s.description = 'https://github.com/x-ion-de/dnssd/README.md'
  s.required_rubygems_version = '>= 1.3.6'
  s.require_paths = ['lib/dnssd']
  s.files = `git ls-files`.split("\n").reject { |name| name.include?('sample') }
  s.extra_rdoc_files = ['README.md']
end
