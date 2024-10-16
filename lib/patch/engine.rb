module Patch
  class Engine < ::Rails::Engine
    isolate_namespace Patch

    initializer "patch.reloader" do |app|
      app.reloader.to_prepare do
        app.root.glob("app/patches/**/*.rb") do |name|
          name.sub(/\.rb$/, "").camelize.constantize.apply!
        end
      end
    end
  end
end
