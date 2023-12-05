# frozen_string_literal: true

require 'bundler/setup'
require 'active_support/all'
require 'pg'
require 'sinatra'
require 'sinatra/base'
require 'yaml'


Bundler.require :default, :development

ENV['PGHOST'] = ENV.fetch('POSTGRESQL_ADDON_HOST', '')
ENV['PGPASSWORD']= ENV.fetch('POSTGRESQL_ADDON_PASSWORD', '')
ENV['PGUSER'] = ENV.fetch('POSTGRESQL_ADDON_USER', '')
ENV['PGDATABASE'] = ENV.fetch('POSTGRESQL_ADDON_DB', '')

class RubyTest < Sinatra::Application
    get '/' do
    'Hello world!'
    end

    get '/pg-ping' do
      conn = PG.connect()
      res = []
      a = conn.exec( "SELECT 1;" )
      a.each_row do |row|
        res << row
      end
      res.to_yaml
    end
end
