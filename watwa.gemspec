# coding utf-8

Gem::Specification.new do |spec|
  spec.name           = 'watwa'
  spec.version        = '0.0.3'
  spec.authors        = ['Chris Robertson']
  spec.email          = ['chrisxrobertson@gmail.com']
  spec.summary        = 'WATWA, A Termainl Weather App'
  spec.description    = 'Displays in the terminal a table of the next 10 days
                         maximum temperature forecast for Melbourne, AU'
  spec.homepage       = 'http://domainforproject.com/'
  spec.license        = 'MIT'

  spec.files          = ['lib/watwa.rb', 'lib/watwa/main.rb']
  spec.executables    = ['watwa']
  spec.test_files     = ['tests/test_watwa.rb']
  spec.require_paths  = ['lib']

  spec.add_runtime_dependency 'tty', '~> 0.6', '>= 0.6.0'
  spec.add_runtime_dependency 'weather-api', '~> 1.4', '>= 1.4.0'
end
