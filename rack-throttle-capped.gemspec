# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/throttle/capped/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-throttle-capped"
  spec.version       = Rack::Throttle::Capped::VERSION
  spec.authors       = ["dizer"]
  spec.email         = ["dizeru@gmail.com"]

  spec.summary       = %q{additional features for Rack::Throttle}
  spec.description   = %q{Capped hash for Throttler cache, flexible limit strategy, etc...}
  spec.homepage      = "https://github.com/dizer/rack-throttle-capped"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency 'rack-throttle', '~> 0'
end
