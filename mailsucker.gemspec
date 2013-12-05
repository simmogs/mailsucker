# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mailsucker/version'

Gem::Specification.new do |spec|
  spec.name          = "mailsucker"
  spec.version       = Mailsucker::VERSION
  spec.authors       = ["Graeme Simpson"]
  spec.email         = ["graeme.simpson@babbleit.co.uk"]
  spec.description   = %q{Sucks at mail}
  spec.summary       = %q{Runs an SMTP server and sticks the mail down a black hole}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "mini-smtp-server"
end
