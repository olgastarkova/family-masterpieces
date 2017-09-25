class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    if current_user.admin == true
    	@poems = Poem.all
    else
    	@poems = Poem.where(user: current_user)
    end
  end
end
