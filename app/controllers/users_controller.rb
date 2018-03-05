class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def photos
    @user = User.find(params[:id])
    render json: @user.photos
  end

  def add_photo
    @user = User.find(params[:id])
    Photo.create(user: @user, uploader: @user, url: params[:url])
    render json: { status: "Created" }, status: 201
  end
end
