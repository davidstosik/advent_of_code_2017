
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "advent_of_code_2017/version"

Gem::Specification.new do |spec|
  spec.name          = "advent_of_code_2017"
  spec.version       = AdventOfCode2017::VERSION
  spec.authors       = ["David Stosik"]
  spec.email         = ["david.stosik+git-noreply@gmail.com"]

  spec.summary       = %q{adventofcode.com/2017}
  spec.description   = %q{My solutions to the Advent of Code 2017}
  spec.homepage      = "https://github.com/davidstosik/advent_of_code_2017"
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

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "faraday"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
