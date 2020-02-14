class LikesController < ApplicationController

    # def liked
    #     puts "I'm connected."       
    # end

    def create
        like = Like.create(like_params)
        like.user = current_user
        like.save()
        render json: like
    end

    # def test
    #     byebug
    # end

    def usersLikes
        render json: current_user.listings
    end

    def index
            likes = Like.all
            render json: likes
    end

    def delete
        like = Like.find_by( listing_id: params[:id], user_id: current_user.id )
        like.destroy
    end

    def show

    end
    private
    def like_params
        params.permit(:listing_id)
    end
   

end