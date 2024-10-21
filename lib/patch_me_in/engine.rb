module PatchMeIn
  class Engine < ::Rails::Engine
    isolate_namespace PatchMeIn

    initializer "patch_me_in.reloader" do |app|
      app.reloader.to_prepare do
        Dir.glob("**/*.rb", base: app.root / "app/patches") do |name|
          puts "Patching #{name}"
          name.sub(/\.rb$/, "").camelize.constantize.apply!
        end
      end
    end
  end
end
