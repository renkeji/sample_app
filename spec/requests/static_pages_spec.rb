require 'spec_helper'

describe "StaticPages" do
  
  describe "HomePage" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
  end
  
  describe "HelpPage" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
  
  describe "AboutPage" do
    it "should have the content 'About'" do
      visit help_path
      page.should have_content('About')
    end
  end
  
end
