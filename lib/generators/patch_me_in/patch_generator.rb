class PatchGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def create_patch_file
    template "patch.tt", "app/patches/#{file_name}_patch.rb"
  end
end
