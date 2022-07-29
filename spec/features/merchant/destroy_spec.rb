require 'rails_helper'

feature 'MERCHANT DESTROY', %q(
  Admin destroy
  Not admin try destroy
) do

  let(:admin) { create(:admin) }
  let(:user) { create(:user) }
  let(:merchant) { create(:merchant) }
  let(:merchant2) { create(:merchant) }

  it 'Admin destroy' do
    sign_in(admin)
    visit merchant_path(merchant)

    find(:css, '.btn-outline-danger').click

    expect(page).to have_content 'Merchant was successfully destroyed.'
  end

  it 'Not admin try destroy' do
    sign_in(user)
    visit merchant_path(merchant2)

    expect(page).not_to have_link('.btn-outline-danger', exact: true)
  end
end