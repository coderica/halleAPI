class UsersController < ApplicationController
	before_action :allow_cross_domain

	def identify
		@user = User.where(oauth_id: params[:id]).first
		unless @user
			@user = User.create!(user_params)
		end
		render json: @user
	end

	# def update
	# end

	# def destroy
	# end

	private

	def user_params
		params.require(:user).permit(:oauth_id)
	end

	def allow_cross_domain
	  headers['Access-Control-Allow-Origin'] = '*'
	  headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
	  headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, X-Prototype-Version, Content-Type, Accept, Authorization, Token'
	end
end
