class AdminController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
		user = Admin.new(username:params[:username],password:params[:password])
		user.save
		render json: user
	end
	 def signin
		username = params[:username]
		password = params.except[:password]
		allow = false
		Admin.all.each do |data|
			if data.username==username && data.password==password
				allow = true
				render json: {allow: "yes",admin: data.username} 
			end
		end
		if(allow == false)
			render json: {allow: "no"}
		end
	end
end