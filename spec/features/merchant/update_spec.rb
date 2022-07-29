# frozen_string_literal: true

require 'rails_helper'

feature 'MERCHANT UPDATE', '
  Author edit
  Admin edit
  Not author try edit
' do
  let(:merchant) { create(:merchant) }
  let(:user) { create(:user) }
  let(:admin) { create(:admin) }

  it 'Author edit' do
    sign_in(merchant)
    visit edit_merchant_path(merchant)

    fill_in 'Name', with: 'New merchant name'
    fill_in 'Description', with: 'New merchant description'
    click_on 'Update Merchant'

    expect(page).to have_content 'Merchant was successfully updated.'
    expect(page).to have_content 'New merchant name'
    expect(page).to have_content 'New merchant description'
  end

  it 'Admin edit' do
    sign_in(admin)
    visit edit_merchant_path(merchant)

    fill_in 'Name', with: 'Admin - New merchant name'
    fill_in 'Description', with: 'Admin - New merchant description'
    click_on 'Update Merchant'

    expect(page).to have_content 'Merchant was successfully updated.'
    expect(page).to have_content 'Admin - New merchant name'
    expect(page).to have_content 'Admin - New merchant description'
  end

  it 'Not author try edit' do
    sign_in(user)
    visit edit_merchant_path(merchant)

    expect(page).to have_content 'You do not have permission to edit.'
  end
end
