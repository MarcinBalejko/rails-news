class GuardianApiClient
  include HTTParty  

  API_KEY = ENV['GUARDIAN_CONTENT_API_KEY']
  BASE_URL ="https://content.guardianapis.com/search?" 
  API_PARTIAL_URL = "api-key=#{API_KEY}"

  def query(q)
    request = HTTParty.get(BASE_URL+"q=#{q}&""api-key=#{API_KEY}")
    puts request
    request
  end

end