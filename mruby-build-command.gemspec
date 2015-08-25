# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mruby/build/command/version'

Gem::Specification.new do |spec|
  spec.name          = "mruby-build-command"
  spec.version       = MRuby::BuildCommand::VERSION
  spec.authors       = ["Seba Gamboa"]
  spec.email         = ["me@sagmor.com"]

  spec.summary       = %q{Build MRuby configurations}
  spec.description   = %q{Command line tool to build MRuby configurations.}
  spec.homepage      = "https://github.com/sagmor/mruby-build-command"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(sample)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mruby-source"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
