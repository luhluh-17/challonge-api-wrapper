# frozen_string_literal: true

module Challonge
  class Request
    def self.tournaments
      client = Challonge::Client.new(api_key: ENV['API_KEY'])
      client.call(http_method: 'get', endpoint: 'tournaments.json')
    end
  end
end
