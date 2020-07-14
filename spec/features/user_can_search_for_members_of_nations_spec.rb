require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "when I select a Fire Nation from the list and click Search for Members" do
    it "I should be on a /search page and see the total number of people in the Fire Nation" do
      
      visit '/'

      select "Fire Nation", from: :nation

      click_on "Search For Members"

      expect(current_path).to eq('/search')

      expect(page).to have_content("20 Results")

      within(first(".member")) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".affiliation")
        expect(page).to have_css(".allies")
        expect(page).to have_css(".enemies")
      end
    end
  end
end