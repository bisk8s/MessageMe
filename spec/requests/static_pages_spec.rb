require 'rails_helper'
require 'spec_helper'
include Capybara::DSL

describe "Static pages" do

  context "Home page" do

    it "should have the content 'Greg'" do
      visit '/'
      expect(page).to have_content('Greg')
    end

  end
end

