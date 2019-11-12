class SearchController < ApplicationController
    # get /search
    def search
        @app = GuardianApiClient.new
        @results = GuardianApiClient.new.query(params[:q])
    end
    def show
        @results = GuardianApiClient.new.query(params[:q])
    end
end

