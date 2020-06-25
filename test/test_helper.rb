ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'bcrypt'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  #def encrypted_password(string)
    #password = BCrypt::Password.create(string)
  #end

  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  def check_bidirectional_associations(model)
    associations = model.reflect_on_all_associations
    associations.each do |assoc|
      assert associated_object = assoc.name.to_s.singularize.camelize.constantize.first,
             "#{assoc.name.to_s.camelize} not present in fixtures. Check test/fixtures/#{assoc.name.to_s.pluralize.underscore}.yml"
      model_method = model.to_s.underscore
      assert associated_object.respond_to?(model_method) || associated_object.respond_to?(model_method.pluralize),
             "#{associated_object.class.to_s.camelize} is not properly associated with #{model.to_s}. Check for the correct association in app/models/#{assoc.name.to_s.underscore}.rb."
    end
  end

  # Add more helper methods to be used by all tests here...
end
