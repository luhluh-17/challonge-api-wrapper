# frozen_string_literal: true

require_relative 'challonge/version'

module Challonge
  autoload :Client, 'challonge/client'
  autoload :Error, 'challonge/error'
  autoload :Tournament, 'challonge/tournament'
end
