require "rails_helper"

RSpec.describe "Searching", type: :feature do
  describe "User search for something" do
    before do
      visit root_path
    end

    it "User is redirected to the same page after search" do
      fill_in :search_term, with: Faker::Lorem.sentence

      click_button I18n.t('home.search-box.submit-button')

      expect(page).to have_content(I18n.t('home.search-box.head-title'))
    end
  end
end
