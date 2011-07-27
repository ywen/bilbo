require 'rubygems'
require 'spork'

Spork.prefork do

  # This file is copied to spec/ when you run 'rails generate rspec:install'
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'

  require 'mongoid'

  Mongoid.configure do |config|
    config.master = Mongo::Connection.new.db('bilbo_test')
    config.allow_dynamic_fields = false
  end


  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    # == Mock Framework
    #
    # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
    #
    # config.mock_with :mocha
    # config.mock_with :flexmock
    # config.mock_with :rr
    config.mock_with :rspec
    config.include Devise::TestHelpers, :type => :controller
    config.include Mongoid::Matchers
    config.extend(RspecMore::ActiveRecord, :type => :model)
    require 'database_cleaner'

    config.before(:each) do
      DatabaseCleaner.orm = "mongoid" 
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean
    end

    config.after(:each) do
      CustomFactory.destroy_all
    end
  end

end

Spork.each_run do
  # This code will be run each time you run your specs.
  # Dir["#{Rails.root}/app/**/*.rb"].each { |f| load f }
  ActiveSupport::Dependencies.clear

end
