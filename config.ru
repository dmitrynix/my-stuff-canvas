require 'bundler'

Bundler.require :default

require File.dirname(__FILE__)+'/static_app'

run StaticApp::Application
