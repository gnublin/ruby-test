# frozen_string_literal: true

require 'bundler/setup'
require 'active_support/all'
require 'pg'
require 'sinatra'
require 'sinatra/base'

Bundler.require :default, :development


get '/' do
  'Hello world!'
end