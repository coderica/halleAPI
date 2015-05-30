class SpacesController < ApplicationController

	def index
		@spaces = Space.all
		render json: @spaces
		# filter spaces based on location
		# display all nearby spaces to user
	end

	def create
		@space = Space.new(space_params)
		@space.save
		render json: @space
	end

	def update
		# change active status
	end

	# def delete
	# 	# destroy bad markers?
	# end

	# LOAD APP ON PHONE
	# GRAB GEOLOCATION
	# PACKAGE LAT & LONG IN JSON
	# SEND PACKAGE TO SERVER
	# INTERNAL PARAMS?
	# USE MODEL METHOD TO FIND NEARBY SPACES USING PARAMS


	private

	def space_params
		params.require(:space).permit(:latitude, :longitude)
	end
end
