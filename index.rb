require 'sinatra'
require 'sinatra/reloader' if development?
require 'http'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/movies' do
    movies = []

    movies.to_json
  end

  run! if app_file == $0
end