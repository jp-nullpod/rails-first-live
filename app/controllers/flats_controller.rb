require "open-uri"

class FlatsController < ApplicationController
    FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json".freeze
    before_action :set_flats

    def index
    end

    def show    
        id = params[:id].to_i
        @flat = @flats.find { |flat| flat["id"] == id }
    end

    private 

    def set_flats
        @flats = JSON.parse(URI.open(FLATS_URL).read)
    end
end
