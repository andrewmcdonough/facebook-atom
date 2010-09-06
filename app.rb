#!/usr/bin/env ruby

require 'rubygems'
require 'open-uri'
require 'sinatra'

get '/' do
  HEADERS = {
    'User-Agent'      => 'Mozilla/5.0 (...) Firefox/3.0.6'
  }
  open("http://www.facebook.com/feeds/page.php?format=atom10&id=130366206997311", HEADERS).read
end
