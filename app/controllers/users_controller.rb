class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token

  def index
  	@users = User.all
  	respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def create
  	@user = User.new(user_params)

	  respond_to do |format|
	  	if @user.save
	      format.html { redirect_to action: "index" }
	      format.json { render json: { message: "Success"}, status: :created }
	  	else
	  		format.html { render action: "new" }
	  		format.json { render json: { message: 'Failed', errors: @user.errors.full_messages.join(",") }, status: :bad_request }
	  	end
	  end
  end

  def filter
  	campaign_names = params[:campaign_names]&.split(",").to_a
  	@users = User.all.select{ |user| (user.campaigns_list.map{ |list| list["campaign_name"] } & campaign_names).present? }
  	respond_to do |format|
      format.html { render "users/filter" }
      format.json { render json: @users }
    end
  end

  private def user_params
  	params.require(:user).permit(:name, :email, campaigns_list: [:campaign_name, :campaign_id])
  end
end
