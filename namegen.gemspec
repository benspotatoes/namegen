# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'namegen/version'

Gem::Specification.new do |spec|
  spec.name          = "namegen"
  spec.version       = Namegen::VERSION
  spec.authors       = ["Benjamin Hsieh, Ben's Potatoes"]
  spec.email         = ["benspotatoes@gmail.com"]
  spec.summary       = %q{Name generator, inspired by 'turbo-happiness'}
  spec.description   = %q{A custom name generator following the likes of
                          Heroku's application-name and Github's repo-name
                          generators.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
