# frozen_string_literal: true

require_relative "lib/paylocity_api/version"

Gem::Specification.new do |spec|
  spec.name          = "paylocity_api"
  spec.version       = PaylocityApi::VERSION
  spec.authors       = ["pohl989"]
  spec.email         = ["pohl989@gmail.com"]

  spec.summary       = "Paylocity API Wrapper"
  # spec.description   = "PaylocityAPI is a simple library that allows you to sync with the Paylocity V2 api"
  # spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  #todo
  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  #todo
  # spec.metadata["source_code_uri"] = "Put your gem's public repo URL here."
  #todo
  # spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["{bin,lib}/**/**/*", "LICENSE", "README.md"]

  #FIXME once in git since this uses the git stuff
  # spec.files = `git ls-files -z`.split("\x0").reject do |f|
  #   f.match(%r{^(test|spec|features)/})
  # end

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "oj", "~> 3.11"
  spec.add_dependency "faraday", "~> 1.4"
  spec.add_dependency "activesupport", "~> 5.0"
  spec.add_dependency "hashie", "~> 4.1"

  spec.add_development_dependency 'pry', "0.10"


  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
