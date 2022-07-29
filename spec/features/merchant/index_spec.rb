# frozen_string_literal: true

require 'rails_helper'

feature 'MERCHANT INDEX', %q(
  Merchant list
  Merchant list with btn for admin
) do

  let(:user) { create(:user) }
  let(:admin) { create(:admin) }
  let!(:merchants) { create_list(:merchant, 2) }

  it 'Merchant list' do
    sign_in(user)
    visit merchants_path

    expect(page).to have_content merchants.first.name
    expect(page).to have_content merchants.last.name
  end

  it 'Merchant list with btn for admin' do
    sign_in(admin)
    visit merchants_path

    find(:css, '.btn-outline-primary').click

    expect(page).to have_content 'Merchant edit'
  end
end