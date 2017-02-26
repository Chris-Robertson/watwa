# coding utf-8
# lib = File.extend_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name           = 'watwa'
  spec.version        = '0.0.2'
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
end
