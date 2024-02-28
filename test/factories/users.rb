# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@test.com" }
    password { "secret123." }

    trait :with_profile do
      after(:create) do |user|
        profile = create(:profile, user: user)
        user.update(profile: profile)
      end
    end
  end
end
