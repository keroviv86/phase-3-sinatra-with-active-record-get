class ApplicationController < Sinatra::Base

  get '/games' do
    games = Game.all.order(:title).limit(10)
    games.to_json
  end
  
end