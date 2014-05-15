class UsersController < ApplicationController
	before_filter :authenticate_user!, only: [:edit, :update]

	def show
		@user = User.find(params[:id])
	end

private
	def user_params

	end

end