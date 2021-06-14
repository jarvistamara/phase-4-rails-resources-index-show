class BirdsController < ApplicationController
    def index # GET /birds
        birds = Bird.all
        render json: birds
    end

    def show # GET /birds/:id
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: { error: "Bird not found" }, status: :not_found
        end
    end
end
