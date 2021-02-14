require 'rails_helper'

describe 'creating a user', type: :system do
  before do
    driven_by :rack_test
  end

  it 'allows a visitor to create a user' do
    visit new_user_path

    fill_in 'email', with: 'bob@example.com'
    fill_in 'username', with: 'bob'
    fill_in 'password', with: 'password'
    click_on 'Create User'

    expect(User.count).to eq(1)
  end
end
