require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Teyuna'" do
      visit '/static_pages/home'
      expect(page).to have_content('Teyuna')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Teyuna | Home")
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  	  visit '/static_pages/help'
  	  expect(page).to have_content('Help')
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Teyuna | Help")
  	end
  end

  describe "About page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

  	it "should have the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("Teyuna | About Us")
  	end
  end
end