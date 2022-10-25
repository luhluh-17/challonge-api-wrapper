# frozen_string_literal: true

module Challonge
  class Request
    def self.tournaments(args: {})
      Challonge::Client.call(http_method: 'get', endpoint: 'tournaments.json', args: args)
    end

    def self.tournament(id:)
      Challonge::Client.call(http_method: 'get', endpoint: "tournaments/#{id}.json")
    end

    def self.create_tournament(name:)
      Challonge::Client.call(http_method: 'post', endpoint: 'tournaments.json', args: { name: name })
    end

    def self.update_tournament(id:, name:)
      Challonge::Client.call(http_method: 'put', endpoint: "tournaments/#{id}.json", args: { name: name })
    end

    def self.delete_tournament(id:)
      Challonge::Client.call(http_method: 'delete', endpoint: "tournaments/#{id}.json")
    end
  end
end
