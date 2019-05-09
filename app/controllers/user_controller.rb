class UserController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
		user = User.new(email:params[:email],password:params[:password])
		user.save
		render json: user
	end
	 def signin
		email = params[:email]
		password = params[:password]
		allow = false
		User.all.each do |data|
			if data.email==email && data.password==password
				allow = true
				render json: {allow: "yes",user: data.email} 
			end
		end
		if(allow == false)
			render json: {allow: "no"}
		end
	end
end