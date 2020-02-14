class ListingController < ApplicationController

    def get_listings
        render json: Listing.all
    end

    def show
        
    end

    def index
        listings = Listing.all
    end

    

end