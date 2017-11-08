
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "link_to/version"

Gem::Specification.new do |spec|
  spec.name          = "link_to"
  spec.version       = LinkTo::VERSION
  spec.authors       = ["yamitake"]
  spec.email         = ["take.yapr@gmail.com"]

  spec.summary       = %q{Make the link_to method easier to use}
  spec.description   = %q{Make the link_to method easier to use. We provide a method group suitable for actual development, such as attaching `active` to the class attribute common to web applications.}
  spec.homepage      = "https://github.com/yamitake/link_to"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails", [">= 3.2.11"]
  spec.add_development_dependency "rspec", "~> 3.0"
end
