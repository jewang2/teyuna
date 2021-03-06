require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Teyuna"}

  describe "Home page" do

    it "should have the content 'Teyuna'" do
      visit '/static_pages/home'
      expect(page).to have_content('Teyuna')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
    	visit '/static_pages/home'
    	expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  	  visit '/static_pages/help'
  	  expect(page).to have_content('Help')
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title} | Help")
  	end
  end

  describe "About page" do

  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

  	it "should have the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About Us")
  	end
  end

  describe "Trip page" do

    it "should have the content 'Trip Planner'" do
      visit '/static_pages/trip'
      expect(page).to have_content('Trip Planner')
    end

    it "should have the title 'Trip Planner'" do
      visit '/static_pages/trip'
      expect(page).to have_title("#{base_title} | Trip Planner")
    end
  end
end