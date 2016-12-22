require 'spec_helper'

feature 'Visitor signs up' do
  scenario 'via email' do
    visit sign_up_path
    expect(page).to have_content("First name")
  end
end