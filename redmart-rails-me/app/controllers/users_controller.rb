class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @post = User.posts
  end

  def new
  end

  def edit
  end


end
