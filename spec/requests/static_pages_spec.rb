require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title Agile Practitioners" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Agile Practitioners')
    end
  end
  
  describe "Home page" do
    it "should have the title Help" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  
  #this is a static page. The form would be not static.
  describe "Call for papers page" do
    it "should have the submision guidlines" do
      visit '/static_pages/call_for_papers'
      page.should have_content('Submission guidelines')
    end
  
    it "should have submission dates" do
      visit '/static_pages/call_for_papers'
      page.should have_content('Submission dates')      
    end
  
  end
end
