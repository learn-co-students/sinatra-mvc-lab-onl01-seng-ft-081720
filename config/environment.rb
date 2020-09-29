ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require './models/piglatinizer'
# require_all 'models'
# original code is line 8, tech coach wrote line 7 as a work around.