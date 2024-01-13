$LOAD_PATH.unshift(File.expand_path('lib', __dir__))

Gem::Specification.new do |spec|
  spec.name          = 'embloy'
  spec.version       = '0.1.4'
  spec.authors       = ['Carlo Bortolan']
  spec.email         = ['carlobortolan@gmail.com']
  spec.summary       = 'Embloy\'s Ruby SDK'
  spec.description   = 'Embloy\'s Ruby SDK for interacting with your Embloy integration.'
  spec.files         = Dir['lib/**/*.rb']
  spec.required_ruby_version = '>= 2.5.0'
  spec.licenses      = ['AGPL-3.0']
  spec.homepage      = 'https://developer.embloy.com'
end