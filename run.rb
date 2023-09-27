# frozen_string_literal: true

require 'bundler/setup'
require 'active_support/all'
require 'pg'
require 'sinatra'
require 'sinatra/base'
require 'yaml'


Bundler.require :default, :development

class RubyTest < Sinatra::Application
    get '/' do
    'Hello world!'
    end

    get '/pg-ping' do
      conn = PG.connect()
      res = []
      a = conn.exec( "SELECT * FROM pg_stat_activity" )
      a.each_row do |row|
        res << row
      end
      res.to_yaml
    end
end