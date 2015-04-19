# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metacritic/version'

Gem::Specification.new do |spec|
  spec.name          = "metacritic"
  spec.version       = Metacritic::VERSION
  spec.authors       = ["Jeremy Sklarsky"]
  spec.email         = ["jeremy.sklarsky@gmail.com"]
  spec.summary       = %q{Wrapper for Mashape's Metacritic API.}
  spec.description   = %q{Wrapper for Mashape's Metacritic API.}
  spec.homepage      = "https://github.com/jeremysklarsky/metacritic.git"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "unirest"
  spec.add_dependency "figaro"

end
