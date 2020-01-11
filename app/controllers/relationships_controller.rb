class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    follow = current_user.active_relationships.new(follower_id: params[:user_id])
    follow.save
    render 'relationships/create.js.erb'
  end

  def destroy
    @user = User.find(params[:user_id])
    follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destroy
    render 'relationships/destroy.js.erb'
  end
end
