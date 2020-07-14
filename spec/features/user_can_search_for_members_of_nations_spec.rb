require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "when I select a Fire Nation from the list and click Search for Members" do
    it "I should be on a /search page and see the total number of people in the Fire Nation" do
      
      visit '/'

      select "Fire Nation", from: :nation

      click_on "Search For Members"

      expect(current_path).to eq('/search')
  
    end
  end
end