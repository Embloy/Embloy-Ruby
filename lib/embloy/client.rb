require 'net/http'
require 'json'

module Embloy
  class Client
    def initialize(client_token, session)
      @client_token = client_token
      @session = session
      @api_url = 'https://api.embloy.com'
      @base_url = 'https://embloy.com'
      @api_version = 'api/v0'
    end

    def make_request
      uri = URI("#{@api_url}/#{@api_version}/sdk/request/auth/token")
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(uri)
      request['client_token'] = @client_token
      # request["Cookie"] = "_cfuvid=.tvZ7VoKcPLj2t6oAxZ3BcFyHzytqGeyd7dG3Sxtlcg-1705083408522-0-604800000"
      form_data = [['mode', @session[:mode]],['success_url', @session[:success_url]],['cancel_url', @session[:cancel_url]],['job_slug', @session[:job_slug]]]
      request.set_form form_data, 'multipart/form-data'

      response = https.request(request)

      handle_response(response)
    end

    private

    def handle_response(response)
      case response
      when Net::HTTPSuccess
        request_token = JSON.parse(response.body)['request_token']
        "#{@base_url}/sdk/apply?request_token=#{request_token}"
      else
        raise StandardError, "Error making request: #{response.message}"
      end
    end
  end
end