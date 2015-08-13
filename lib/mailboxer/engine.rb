# Database foreign keys
require 'foreigner' if Rails.version < "4.2.0"
require 'carrierwave'
begin
  require 'sunspot_rails'
rescue LoadError
end

module Mailboxer
  class Engine < Rails::Engine
    initializer "mailboxer.models.messageable" do
      ActiveSupport.on_load(:active_record) do
        extend Mailboxer::Models::Messageable::ActiveRecordExtension
      end
    end
  end
end

module EngineWithMigrations
  class Engine < ::Rails::Engine
    isolate_namespace EngineWithMigrations

    initializer :append_migrations do |app|
      require 'rake'
      Rails.application.load_tasks
      Rake::Task['railties:install:migrations'].reenable
      Rake::Task['mailboxer_engine:install:migrations'].invoke
    end
  end
end