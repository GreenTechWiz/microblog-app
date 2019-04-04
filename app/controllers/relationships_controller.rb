class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    relationship = Relationship.new(
                                    follower_id: current_user.id,
                                    followee_id: params[:followee_id]
    )

    if relationship.save
      followed_user_name = User.find(params[:followee_id]).first_name
      flash[:success] = "You're now following #{followed_user_name}"
      redirect_to "/users/#{params[:followee_id]}"
    else
      flash[:error] = "Something went wrong"

    end
  end 
end
