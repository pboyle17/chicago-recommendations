require 'sinatra/base'
require './controllers/application'
require './controllers/recommendations'
require './models/recommendation'

map ('/') {run RecommendationsController}
