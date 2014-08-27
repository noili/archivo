ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  
  
end

class ActionController::TestCase

  include Devise::TestHelpers
  #include Warden::TestHelpers
  #warden.test_mode!
  setup do
    sign_in users :emmet
  end

end
