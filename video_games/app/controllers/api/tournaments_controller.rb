class Api::TournamentsController < ApplicationController
  	
  	def index
		tournaments = Tournament.all
		render json: tournaments
	end

	def create
		tournament = Tournament.create(tournament_params)
		tournament.save
		render json: (tournament), status: 201
	end

	def show
		tournaments = Tournament.find_by(id: params[:id])
		unless tournaments
			render json: {error: "tournament not found"}, status: 400
			return
		end
		render json: tournaments
	end

		def delete
		tournament = Tournament.find_by(id: params[:id])
		unless tournament
			render json: {error: "tournament not found"}, status: 400
			return
		end
		tournament.delete
		render json: tournament
	end

private

	def tournament_params
		params.require(:tournament).permit(:name)
	end
end


