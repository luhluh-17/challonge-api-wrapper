# frozen_string_literal: true

require 'faraday'

module Challonge
  class Client
    BASE_URL = 'https://api.challonge.com/v1/'

    attr_reader :api_key, :adapter

    def initialize(api_key:, adapter: Faraday.default_adapter)
      @api_key = api_key
      @adapter = adapter
    end

    def connection
      @connection ||=
        Faraday.new do |conn|
          conn.url_prefix = BASE_URL
          conn.params = { api_key: api_key }
          conn.request :json
          conn.response :json
          conn.adapter adapter
          conn.use Faraday::Response::RaiseError
        end
    end

    def call(http_method:, endpoint:, args: {})
      response = connection.send(http_method, endpoint, args)
      { code: response.status, status: 'Success', data: response.body }
    rescue Faraday::Error => e
      { code: e.response[:status], status: e.message, data: Error.map(e.response[:status]) }
    end

    def inspect
      '#<Challonge::Client>'
    end
  end
end
