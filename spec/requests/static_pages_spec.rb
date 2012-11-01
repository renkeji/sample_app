require 'spec_helper'

describe "StaticPages" do
  
  describe "HomePage" do
    it "should have the content 'Sample App'" do
      visit '/'
      page.should have_content('Sample App')
    end
  end
  
end
