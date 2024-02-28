# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "factory_bot"

module ActiveSupport
  class TestCase
    include Devise::Test::IntegrationHelpers
    include FactoryBot::Syntax::Methods

    parallelize(workers: :number_of_processors)
  end
end
