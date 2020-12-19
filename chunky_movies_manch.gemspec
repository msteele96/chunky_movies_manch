require_relative 'lib/chunky_movies_manch/version'

Gem::Specification.new do |spec|
  spec.name          = "chunky_movies_manch"
  spec.version       = ChunkyMoviesManch::VERSION
  spec.authors       = ["msteele96"]
  spec.email         = ["marcsteele2014@gmail.com"]

  spec.summary       = "This gem allows you to use a CLI to get the info about the movies that are playing today at Chunky's Cinema Pub."
  spec.homepage      = "https://github.com/msteele96/chunky_movies_manch"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/msteele96/chunky_movies_manch"
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
