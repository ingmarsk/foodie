# frozen_string_literal: true

require_relative "lib/foodie/version"

# The Gem Specification file. This is where we provide information for Rubygems consumption such as the name,
# description and homepage of our gem. This is also where we specify the dependencies our gem needs to run.

Gem::Specification.new do |spec|
  spec.name          = "foodie-ingmarsk"
  spec.version       = Foodie::VERSION
  spec.authors       = ["Ingemar Andrade"]
  spec.email         = ["ingmar.lbs@gmail.com"]

  spec.summary       = "My first gem"
  spec.homepage      = "https://github.com/ingmarsk/foodie"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ingmarsk/foodie"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\^(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rspec', '~> 3.11'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'cucumber'
  spec.add_dependency 'aruba'
  spec.add_dependency 'thor'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
