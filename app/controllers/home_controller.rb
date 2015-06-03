class HomeController < ApplicationController
	def index
		render :text => 'Welcome'
		@a = "string"
		@home = "Welcome"
		@user = "name the user"
	end
end
