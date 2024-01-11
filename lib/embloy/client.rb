require 'net/http'
require 'json'

module Embloy
  class Client
    def initialize(client_token)
      @client_token = client_token
      @base_url = 'https://embloy.com'
      @api_version = 'api/v0'
    end

    def make_request
      uri = URI("#{@base_url}/#{@base_url}/sdk/request/auth/token")
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Post.new(uri)
      request['client_token'] = @client_token

      response = http.request(request)

      handle_response(response)
    end

    private

    def handle_response(response)
      case response
      when Net::HTTPSuccess
        request_token = JSON.parse(response.body)['request_token']
        "@#{@base_url}/sdk/apply?token=#{request_token}"
      else
        raise StandardError, "Error making request: #{response.message}"
      end
    end
  end
end