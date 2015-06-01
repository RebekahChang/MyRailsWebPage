require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the h1 'Welcome to my First Ruby Web Application!'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Welcome to my First Ruby Web Application!')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Rebekah Chang")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "About page" do
  	it "should have content 'About me'" do
  	  visit '/static_pages/about'
  	  page.should have_content('About me')
  	end
    it "should have title 'About'" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text => "Rebekah Chang | About")
    end
  end

  describe "Work page" do
  	it "shoul have content 'Work Experiences'" do
  		visit '/static_pages/work'
  		page.should have_content('Work Experiences')
  	end
    it "should have title 'Work'" do
    	visit '/static_pages/work'
    	page.should have_selector('title', :text => "Rebekah Chang | Work")
    end
  end
end
