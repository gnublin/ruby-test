# MIT License
# Copyright (c) 2022 Gauthier FRANCOIS
# frozen_string_literal: true

require 'bundler/setup'
require './run.rb'

enable :sessions

Bundler.require :default, :development

run RubyTest
