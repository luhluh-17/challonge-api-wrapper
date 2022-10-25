# frozen_string_literal: true

module Challonge
  class Tournament
    def self.all(args: {})
      Challonge::Client.call(http_method: 'get', endpoint: 'tournaments.json', args: args)
    end

    def self.show(id:)
      Challonge::Client.call(http_method: 'get', endpoint: "tournaments/#{id}.json")
    end

    def self.create(name:)
      Challonge::Client.call(http_method: 'post', endpoint: 'tournaments.json', args: { name: name })
    end

    def self.update(id:, name:)
      Challonge::Client.call(http_method: 'put', endpoint: "tournaments/#{id}.json", args: { name: name })
    end

    def self.delete(id:)
      Challonge::Client.call(http_method: 'delete', endpoint: "tournaments/#{id}.json")
    end
  end
end
