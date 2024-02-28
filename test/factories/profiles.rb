# frozen_string_literal: true

FactoryBot.define do
  factory :profile do
    user
    sequence :username do |n|
      "user##{n}"
    end
    first_name { "John" }
    last_name { "Doe" }
  end
end
