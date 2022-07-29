# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    sequence(:merchant_id) { |n| n }
    sequence(:amount) { |n| n }
    status { 1 }
    customer_email { 'customer@example.com' }
    customer_phone { '+7 707 159 7535' }
  end
end
