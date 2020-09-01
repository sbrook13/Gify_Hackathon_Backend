class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites
    end
    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def create
        @favorite = Favorite.create({
            title: params(:title),
            url: params(:url),
            user_id: params(:user_id)
        })
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        render json: {message: "Favorite Destroyed!"}
    end
end
