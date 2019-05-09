class ManagersController < ApplicationController
 skip_before_action :verify_authenticity_token 

	def index
		managers = Manager.all
		render json: managers
	end

	def create
		manager = Manager.new(first_name:params[:first_name],
							last_name:params[:last_name],
							age:params[:age],
							dob:params[:dob],
							nationality:params[:nationality],
							team:params[:team])
		manager.save
		render json: manager
	end

	def show
		manager = Manager.find(params[:id])
		render json: manager
	end

	def update
		manager = Manager.find(params[:id])
		manager.update_attributes(first_name:params[:first_name],
							last_name:params[:last_name],
							age:params[:age],
							dob:params[:dob],
							nationality:params[:nationality],
							team:params[:team])
		render json: manager
	end

	def edit
		manager = Manager.find(params[:id])
		render json: manager
	end

	def destroy
		Manager.destroy(params[:id])
		render json: {msg:"deleted"}
	end 


end