class TeamsController < ApplicationController
 skip_before_action :verify_authenticity_token 

	def index
		teams = Team.all
		render json: teams
	end

	def create
		team = Team.new(name:params[:name],owner:params[:owner],manager:params[:manager],captain:params[:captain])
		team.save
		render json: team
	end

	def show
		team = Team.find(params[:id])
		render json: team
	end

	def update
		team = Team.find(params[:id])
		team.update_attributes(name:params[:name],owner:params[:owner],manager:params[:manager],captain:params[:captain])
		render json: team
	end

	def edit
		team = Team.find(params[:id])
		render json: team
	end

	def destroy
		Team.destroy(params[:id])
		render json: {msg:"deleted"}
	end 


end