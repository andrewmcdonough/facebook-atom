#!/usr/bin/env ruby

require 'rubygems'
require 'open-uri'
require 'sinatra'

get '/' do
  HEADERS = {
    'User-Agent'      => 'Mozilla/5.0 (...) Firefox/3.0.6'
  }
  result =  ""
  file = open("http://www.facebook.com/feeds/page.php?format=atom10&id=130366206997311", HEADERS)
  while line = file.gets
    line.gsub! /<id>/,"<id>http://sahara.tribesports.com/"
    line.gsub! /\023/,""
    result += line
  end
  result
end

get '/pipes-feed' do
  result = ""
  url = "http://pipes.yahoo.com/pipes/pipe.run?_id=aa0f3e7155c3300661a251efd0fa6072&_render=rss"
  file = open(url)
  while line = file.gets
    line.gsub! /\x96/,""
    line.gsub! /\302/,""
    result += line
  end
  result
end

