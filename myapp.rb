require 'rubygems'
require 'sinatra'
require 'strava-api'

get '/hello' do
  
  s = StravaApi::Base.new
  @my_rides = s.rides(:athlete_id => 57431, :start_date => Date.civil(2010,9,21))
  

  
  
  erb :hello
end