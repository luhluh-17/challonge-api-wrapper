# frozen_string_literal: true

module Challonge
  class Tournament
    @client = Challonge::Client.new(api_key: ENV['API_KEY'])

    def self.all(args: {})
      @client.call(http_method: 'get', endpoint: endpoint, args: args)
    end

    def self.find_by_id(id:)
      @client.call(http_method: 'get', endpoint: endpoint(id))
    end

    def self.create(name:)
      @client.call(http_method: 'post', endpoint: endpoint, args: { name: name })
    end

    def self.update(id:, name:)
      @client.call(http_method: 'put', endpoint: endpoint(id), args: { name: name })
    end

    def self.delete(id:)
      @client.call(http_method: 'delete', endpoint: endpoint(id))
    end

    def self.endpoint(id: nil)
      return 'tournaments.json' if id.nil?

      "tournaments/#{id}.json"
    end
  end
end
