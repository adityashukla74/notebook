require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Notebook
  class Application < Rails::Application
    config.generators do |g|
        g.template_engine :haml

         # you can also specify a different test framework or ORM here
         # g.test_framework  :rspec
         # g.orm             :mongoid
    end    
    config.active_record.raise_in_transactional_callbacks = true
  end
end
