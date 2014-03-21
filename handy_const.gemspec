lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'handy_const/version'

Gem::Specification.new do |spec|
  spec.name          = 'handy_const'
  spec.version       = HandyConst::VERSION
  spec.authors       = ['Alexey Volodkin']
  spec.email         = ['a@vldkn.net']
  spec.description   = %q{Define class and instance methods for consts access}
  spec.summary       = %q{Handy const definition}
  spec.homepage      = 'https://github.com/miraks/handy_const'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '3.0.0.beta2'
  spec.add_development_dependency 'guard-rspec'
end
