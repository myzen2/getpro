class PagesController < ApplicationController
  def index
  end
  def dashboard
    @users = User.all
    @user = current_user
  end
  def contact
  end

end
