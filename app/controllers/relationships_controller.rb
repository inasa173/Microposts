class RelationshipsController < ApplicationController
  before_action :require_user_logges_in

  def create
    user = User.find(params[:follow_id])
    currnt_user.follow(user)
    flash[:success] = 'フォローしました'
    redirect_to user
  end

  def destroy
    user = User.find(params[:follow_id])
    current_user.unfollow(user)
    flash[:success] = 'フォローを解除しました'
    redirect_to user
  end
end
