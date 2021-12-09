require 'rails_helper'

RSpec.feature "HomePages", type: :feature do
  #pending "add some scenarios (or delete) #{__FILE__}"
end


require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    click_link "Login"
    click_link "Sign up"
    within("form") do
     fill_in "Email", with: "abc@tess.com"
     fill_in "Password", with: "123456"
     fill_in "Password confirmation", with: "123456"
     click_button "Sign up"
    end
    visit root_path
    expect(page).to have_text("Projects")
  end
end