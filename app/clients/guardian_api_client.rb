# app/clients/guardian_api_client.rb
class GuardianApiClient
    include HTTParty
    base_uri 'https://content.guardianapis.com'
    format :json
  
    def initialize(**options)
      @options = {
        "api-key" => ENV['GUARDIAN_CONTENT_API_KEY']
      }.merge(options)
    end
  
    def search(q)
      response = self.class.get('/search', @options.merge(
        q: q
      ))
      if response.success?
        response["results"]
      else
        [] # @todo add error handling
      end
    end
  end