class SearchController < ApplicationController
    # get /search
    def search
        @results = GuardianApiClient.new.search(params[:q])
    end

end

