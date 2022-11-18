require_relative "lib/nine_to_five/version"

Gem::Specification.new do |spec|
  spec.name        = "nine_to_five"
  spec.version     = NineToFive::VERSION
  spec.authors     = ["Chris Oliver"]
  spec.email       = ["excid3@gmail.com"]
  spec.homepage    = "https://github.com/excid3/nine_to_five"
  spec.summary     = "Rails plugin to enforce business hours."
  spec.description = "Restricts your Rails app to only provide requests during business hours using a Rack middleware"
    spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
end
