class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(10)
  end


  def show
    @user = User.find(params[:id])
    render("users/show.html.erb")
  end
  def bypass
    render("/route_requests/new_origin")
  end
end
