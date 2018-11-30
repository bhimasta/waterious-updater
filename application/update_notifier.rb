# frozen_string_literal: true

require 'econfig'

require_relative '../init.rb'

extend Econfig::Shortcut
Econfig.env = ENV['WORKER_ENV'] || 'production'
Econfig.root = '.'

puts 'Updating the Hydration'
Waterious::ApiGateway.new.update_summaries
puts 'All Data has been updated'
