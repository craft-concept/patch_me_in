require_relative "lib/patch_me_in/version"

Gem::Specification.new do |spec|
  spec.name        = "patch_me_in"
  spec.version     = PatchMeIn::VERSION
  spec.authors     = [ "Jeff Peterson" ]
  spec.email       = [ "jeff@yak.sh" ]
  spec.homepage    = "https://github.com/craft-concept/patch_me_in"
  spec.summary     = "Easily patch objects in a Rails app with live-reload support."
  spec.description = "Easily patch objects in a Rails app with live-reload support."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/craft-concept/patch_me_in"
  spec.metadata["changelog_uri"] = "https://github.com/craft-concept/patch_me_in/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.0.beta1"
end
