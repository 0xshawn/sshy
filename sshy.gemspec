# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sshy/version'

Gem::Specification.new do |spec|
  spec.name          = "sshy"
  spec.version       = Sshy::VERSION
  spec.authors       = ["Shown Tien"]
  spec.email         = ["hightian@gmail.com"]
  spec.summary       = %q{SSH Tool}
  spec.description   = %q{Sshy help you connect to your ssh server without remember every name of it.}
  spec.homepage      = "https://github.com/wenxer/sshy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'colorize', '>= 0.7.5'
  spec.add_runtime_dependency 'io-console', '>= 0.4.2'
  spec.add_runtime_dependency 'terminal-table', '>= 1.4.5'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
end
