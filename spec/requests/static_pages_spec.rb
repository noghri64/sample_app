require 'spec_helper'

describe "Static pages" do

let(:base_title) { "Ruby on Rails Tutorial Sample App" }

 describe "Contact Page" do

    it "should have the right title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
    it "should have the content 'Sample App'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end
  describe "Home page" do

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home Page')
    end
     it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
 
  end
  describe "Help Page" do
    
    it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
  describe "About Page" do
    
    it "should have the right title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end