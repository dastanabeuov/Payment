# frozen_string_literal: true

require 'rails_helper'

feature 'MERCHANT SHOW', '
  Current user show
  Admin show
' do

  let(:admin) { create(:admin) }
  let(:merchant) { create(:merchant) }

  it 'Current user show' do
    sign_in(merchant)
    visit merchant_path(merchant)

    expect(page).to have_content merchant.name
  end

  it 'Admin show' do
    sign_in(user)
    visit merchant_path(merchant)

    expect(page).to have_content merchant.name
  end
end