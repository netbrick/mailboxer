# Database foreign keys
require 'foreigner' if Rails.version < "4.2.0"
require 'carrierwave'
begin
  require 'sunspot_rails'
rescue LoadError
end

module Mailboxer
  class Engine < Rails::Engine
    isolate_namespace EngineWithMigrations
    initializer "mailboxer.models.messageable" do
      ActiveSupport.on_load(:active_record) do
        extend Mailboxer::Models::Messageable::ActiveRecordExtension
      end
    end

    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
