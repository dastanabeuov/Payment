require 'rails_helper'

feature 'MERCHANT CREATE', %q(
  Admin create
  Admin create with errors
) do

  let(:admin) { create(:admin) }

  it 'Admin create' do
    sign_in(admin)
    visit merchants_path

    find(:css, '.btn-outline-primary').click

    fill_in 'merchant[email]', with: 'example@example.com'
    fill_in 'merchant[password]', with: '12345678'
    fill_in 'merchant[password confirmation]', with: '12345678'
    fill_in 'merchant[name]', with: 'MyString'
    fill_in 'merchant[description]', with: 'MyText'
    click_on 'Create Merchant'

    expect(page).to have_content 'Merchant was successfully created.'
    expect(page).to have_content 'MyString'
    expect(page).to have_content 'MyText'
  end

  it 'Admin create with errors' do
    sign_in(admin)
    visit merchants_path

    find(:css, '.btn-outline-primary').click
    click_on 'Create Merchant'

    expect(page).to have_content 'Merchant could not be created.'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Description can't be blank"
  end
end