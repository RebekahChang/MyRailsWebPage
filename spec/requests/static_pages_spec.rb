require 'spec_helper'

describe "StaticPages" do

	subject { page }

  describe "Home page" do

  	before { visit root_path }

    it { should have_selector('h1', text: 'Welcome to my First Ruby Web Application!') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector'title', text: '| Home' }
  end

  describe "About page" do

  	before { visit about_path }

  	it "should have content 'About me'" do
  	  page.should have_content('About me')
  	end
    it "should have title 'About'" do
    	page.should have_selector('title', :text => "Rebekah Chang | About")
    end
  end

  describe "Work page" do

  	before { visit work_path }

  	it "should have content 'Work Experiences'" do
  		page.should have_content('Work Experiences')
  	end

    it "should have title 'Work'" do
    	page.should have_selector('title', :text => "Rebekah Chang | Work")
    end
  end

  describe "Contact page" do

  	before { visit contact_path }

  	it "should have title 'Contact'" do
  		page.should have_selector('title', :text => "Rebekah Chang | Contact")
  	end

  	it "should have content 'Contact me!'" do
  		page.should have_content('Contact me!')
  	end
  end

end
