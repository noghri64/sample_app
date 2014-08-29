require 'spec_helper'

describe "Static pages" do

subject {page}

shared_examples_for "all static pages" do
    it {should have_title(full_title(page_title))}
    it {should have_selector('h1', text: heading)}
end
 describe "Contact Page" do
  before {visit contact_path}
  let(:heading) {'Contact'}
  let(:page_title) {'Contact'}
 end

  describe "Home page" do
  before {visit root_path}
    let(:page_title) {''}
    let(:heading) {'Home'}
    it {should_not have_title('Home')}
  end
  describe "Help page" do
    before { visit help_path }
    let(:heading){'Help'}
    let(:page_title){'Help'}
  end

  describe "About page" do
    before { visit about_path }
    let(:heading){'About'}
    let(:page_title){'About'}
  end
  
it "should have the right links on the layout" do
  visit root_path
  click_link "About"
  expect(page).to have_title(full_title('About Us'))
  click_link "Help"
  expect(page).to have_title(full_title('Help'))
  click_link "Contact"
  expect(page).to have_title(full_title('Contact'))
  click_link "Home"
  click_link "Sign up now!"
  expect(page).to have_title(full_title('Sign up'))
  click_link "sample app"
  expect(page).to have_title(full_title('Sample App'))
end

end