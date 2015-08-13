# -*- encoding: utf-8 -*-
# stub: mailboxer 0.13.3 ruby lib

Gem::Specification.new do |s|
  s.name = "mailboxer"
  s.version = "0.13.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Eduardo Casanova Cuesta"]
  s.date = "2015-08-13"
  s.description = "A Rails engine that allows any model to act as messageable, adding the ability to exchange messages with any other messageable model, even different ones. It supports the use of conversations with two or more recipients to organize the messages. You have a complete use of a mailbox object for each messageable model that manages an inbox, sentbox and trash for conversations. It also supports sending notifications to messageable models, intended to be used as system notifications."
  s.email = "ecasanovac@gmail.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", ".yardopts", "Appraisals", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "app/builders/mailboxer/base_builder.rb", "app/builders/mailboxer/conversation_builder.rb", "app/builders/mailboxer/message_builder.rb", "app/builders/mailboxer/notification_builder.rb", "app/builders/mailboxer/receipt_builder.rb", "app/mailers/mailboxer/base_mailer.rb", "app/mailers/mailboxer/message_mailer.rb", "app/mailers/mailboxer/notification_mailer.rb", "app/models/mailboxer/conversation.rb", "app/models/mailboxer/conversation/opt_out.rb", "app/models/mailboxer/mailbox.rb", "app/models/mailboxer/message.rb", "app/models/mailboxer/notification.rb", "app/models/mailboxer/receipt.rb", "app/uploaders/mailboxer/attachment_uploader.rb", "app/views/mailboxer/message_mailer/new_message_email.html.erb", "app/views/mailboxer/message_mailer/new_message_email.text.erb", "app/views/mailboxer/message_mailer/reply_message_email.html.erb", "app/views/mailboxer/message_mailer/reply_message_email.text.erb", "app/views/mailboxer/notification_mailer/new_notification_email.html.erb", "app/views/mailboxer/notification_mailer/new_notification_email.text.erb", "config/locales/en.yml", "db/migrate/20110511145103_create_mailboxer.rb", "db/migrate/20131206080416_add_conversation_optout.rb", "db/migrate/20131206080417_add_missing_indices.rb", "db/migrate/20150813134025_add_object_to_conversations.rb", "gemfiles/rails3.2.gemfile", "gemfiles/rails4.0.gemfile", "gemfiles/rails4.1.gemfile", "gemfiles/rails4.2.gemfile", "lib/generators/mailboxer/install_generator.rb", "lib/generators/mailboxer/namespacing_compatibility_generator.rb", "lib/generators/mailboxer/templates/initializer.rb", "lib/generators/mailboxer/templates/mailboxer_namespacing_compatibility.rb", "lib/generators/mailboxer/views_generator.rb", "lib/mailboxer.rb", "lib/mailboxer/cleaner.rb", "lib/mailboxer/engine.rb", "lib/mailboxer/mail_dispatcher.rb", "lib/mailboxer/models/messageable.rb", "lib/mailboxer/version.rb", "mailboxer.gemspec", "spec/dummy/.gitignore", "spec/dummy/Gemfile", "spec/dummy/Rakefile", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/controllers/home_controller.rb", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/mailers/.gitkeep", "spec/dummy/app/models/.gitkeep", "spec/dummy/app/models/cylon.rb", "spec/dummy/app/models/duck.rb", "spec/dummy/app/models/user.rb", "spec/dummy/app/views/home/index.html.haml", "spec/dummy/app/views/layouts/application.html.haml", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml", "spec/dummy/config/environment.rb", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/mailboxer.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/locales/en.yml", "spec/dummy/config/routes.rb", "spec/dummy/config/sunspot.yml", "spec/dummy/db/migrate/20110228120600_create_users.rb", "spec/dummy/db/migrate/20110306002940_create_ducks.rb", "spec/dummy/db/migrate/20110306015107_create_cylons.rb", "spec/dummy/db/migrate/20120305103200_create_mailboxer.rb", "spec/dummy/db/migrate/20131206080416_add_conversation_optout.rb", "spec/dummy/db/schema.rb", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/dummy/public/index.html", "spec/dummy/public/robots.txt", "spec/dummy/public/uploads/testfile.txt", "spec/dummy/script/rails", "spec/factories/cylon.rb", "spec/factories/duck.rb", "spec/factories/user.rb", "spec/integration/message_and_receipt_spec.rb", "spec/integration/navigation_spec.rb", "spec/mailboxer/mail_dispatcher_spec.rb", "spec/mailboxer_spec.rb", "spec/mailers/message_mailer_spec.rb", "spec/mailers/notification_mailer_spec.rb", "spec/models/conversation_spec.rb", "spec/models/mailbox_spec.rb", "spec/models/mailboxer_models_messageable_spec.rb", "spec/models/message_spec.rb", "spec/models/notification_spec.rb", "spec/models/receipt_spec.rb", "spec/spec_helper.rb", "spec/testfile.txt"]
  s.homepage = "https://github.com/ging/mailboxer"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.6"
  s.summary = "Messaging system for rails apps."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<foreigner>, [">= 0.9.1"])
      s.add_runtime_dependency(%q<rails>, [">= 3.2.0"])
      s.add_runtime_dependency(%q<carrierwave>, [">= 0.5.8"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.1"])
      s.add_development_dependency(%q<rspec-collection_matchers>, ["~> 1.1"])
      s.add_development_dependency(%q<appraisal>, ["~> 1.0.0"])
      s.add_development_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, ["~> 2.6.0"])
      s.add_development_dependency(%q<forgery>, [">= 0.3.6"])
      s.add_development_dependency(%q<capybara>, [">= 0.3.9"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<foreigner>, [">= 0.9.1"])
      s.add_dependency(%q<rails>, [">= 3.2.0"])
      s.add_dependency(%q<carrierwave>, [">= 0.5.8"])
      s.add_dependency(%q<rspec-rails>, ["~> 3.0"])
      s.add_dependency(%q<rspec-its>, ["~> 1.1"])
      s.add_dependency(%q<rspec-collection_matchers>, ["~> 1.1"])
      s.add_dependency(%q<appraisal>, ["~> 1.0.0"])
      s.add_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_dependency(%q<factory_girl>, ["~> 2.6.0"])
      s.add_dependency(%q<forgery>, [">= 0.3.6"])
      s.add_dependency(%q<capybara>, [">= 0.3.9"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<foreigner>, [">= 0.9.1"])
    s.add_dependency(%q<rails>, [">= 3.2.0"])
    s.add_dependency(%q<carrierwave>, [">= 0.5.8"])
    s.add_dependency(%q<rspec-rails>, ["~> 3.0"])
    s.add_dependency(%q<rspec-its>, ["~> 1.1"])
    s.add_dependency(%q<rspec-collection_matchers>, ["~> 1.1"])
    s.add_dependency(%q<appraisal>, ["~> 1.0.0"])
    s.add_dependency(%q<shoulda-matchers>, [">= 0"])
    s.add_dependency(%q<factory_girl>, ["~> 2.6.0"])
    s.add_dependency(%q<forgery>, [">= 0.3.6"])
    s.add_dependency(%q<capybara>, [">= 0.3.9"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
