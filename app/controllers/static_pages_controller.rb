class StaticPagesController < ApplicationController
  def home
  end

  def about
  	@instagram = Instagram.user_recent_media("43216518", {:count => 48})
  end

  def work
  end

  def contact
  end

end
