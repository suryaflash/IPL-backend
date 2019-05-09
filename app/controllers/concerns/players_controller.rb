class PlayersController < ApplicationController
 skip_before_action :verify_authenticity_token 

	def index
		players = Player.all
		render json: players
	end

	def create
		player = Player.new(first_name:params[:first_name],
							last_name:params[:last_name],
							age:params[:age],
							dob:params[:dob],
							role:params[:role],
							nationality:params[:nationality],
							team:params[:team],
							batting_style:params[:batting_style],
							bowling_style:params[:bowling_style])
		player.save
		render json: player
	end

	def show
		player = Player.find(params[:id])
		render json: player
	end

	def update
		player = Player.find(params[:id])
		player.update_attributes(first_name:params[:first_name],
							last_name:params[:last_name],
							age:params[:age],
							dob:params[:dob],
							role:params[:role],
							nationality:params[:nationality],
							team:params[:team],
							batting_style:params[:batting_style],
							bowling_style:params[:bowling_style])
		render json: player
	end

	def edit
		player = Player.find(params[:id])
		render json: player
	end

	def destroy
		Player.destroy(params[:id])
		render json: {msg:"deleted"}
	end 


end