require 'spec_helper'

describe "Static pages" do

subject {page}

 describe "Contact Page" do
  
  before {visit contact_path}
    it {should have_title(full_title(''))}
    it {should have_content('Contact')}
  
  end

  describe "Home page" do
  before {visit root_path}
    it {should have_title(full_title(''))}
    it {should have_content('Home')}
    it {should_not have_title('| Home')}
 
  end
  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

end