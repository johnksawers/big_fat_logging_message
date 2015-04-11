# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slightly_better_debug_logging/version'

Gem::Specification.new do |spec|
  spec.name          = "slightly_better_debug_logging"
  spec.version       = SlightlyBetterDebugLogging::VERSION
  spec.authors       = ["John Sawers"]
  spec.email         = ["john@johnksawers.com"]
  spec.summary       = "A simple shorthand for  dumping objecti information into the logs in sn obvious way"
  spec.description   = "To be used when debugging with loge messages. Often you want to dump objec tinfo, but it's hard to find the info in a busy log file. So this makes is obvious"
  spec.homepage      = "https://www.github.com/johnksawers/slightly_better_debug_logging"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
