require 'rails_helper'

RSpec.describe "SiteLayouts", type: :system do
  describe "home layout" do
    it "contains link" do
      visit root_path
      expect(page).to have_link nil, href: root_path, count: 1
    end
  end
end