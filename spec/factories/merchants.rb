# frozen_string_literal: true

FactoryBot.define do
  factory :merchant do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { '12345678' }
    password_confirmation { '12345678' }
    name { 'woodman' }
    description { 'E-commerce store WOODMAN' }
    status { false }
    total_transaction_sum { 0 }
    type { 'Merchant' }
  end
end
