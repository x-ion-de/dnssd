Gem::Specification.new do |s|
  s.name        = 'dnssd'
  s.version     = '3.0.2'
  s.authors     = ['tenderlove']
  s.email       = ''
  s.homepage    = 'https://github.com/x-ion-de/dnssd'
  s.summary     = 'added some small extensions to original gem: https://github.com/tenderlove/dnssd'
  s.description = 'https://github.com/x-ion-de/dnssd/README.md'
  s.required_rubygems_version = '>= 1.3.6'
  s.files = Dir['lib     .rb'] + Dir['ext     .c']
  gem.require_paths = ['lib']
  s.extra_rdoc_files = ['README.md']
end
