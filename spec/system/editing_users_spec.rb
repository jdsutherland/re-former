require 'rails_helper'

describe 'editing a user', type: :system do
  before do
    driven_by :rack_test
  end

  it 'allows a visitor to edit a user' do
    user = create(:user)
    visit edit_user_path(user)

    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Username', with: 'bob'
    fill_in 'Password', with: 'password'
    click_on 'Update User'

    expect(User.find(user.id).email).to eq('bob@example.com')
  end
end
