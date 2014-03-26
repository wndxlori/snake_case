# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snake_case/version'

Gem::Specification.new do |spec|
  spec.name          = "snake_case"
  spec.version       = SnakeCase::VERSION
  spec.authors       = ["Jack Dean Watson-Hamblin"]
  spec.email         = ["info@fluffyjack.com"]
  spec.summary       = %q{For RubyMotion developers who are a fan of snake_case.}
  spec.description   = "For RubyMotion developers who are a fan of snake_case. Converting to snake_case, one API at a time.\n\nSlowly converting any API I use to snake_case or to a more idiomatic way of doing it. Lots of monkey patching, because RUBY!"
  spec.homepage      = "https://github.com/FluffyJack/snake_case"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
