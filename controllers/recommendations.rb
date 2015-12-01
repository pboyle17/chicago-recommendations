#each controller should have its own model.
class RecommendationsController < ApplicationController
  post '/create' do
    some_recommendation=Recommendation.new
    some_recommendation.place=params[:place]
    some_recommendation.contributor=params[:contributor]
    some_recommendation.notes=params[:notes]
    some_recommendation.type_of_place=params[:type_of_place]
    some_recommendation.save
    @recommendations=Recommendation.all
    erb :thanks
  end

  get '/api:id' do
    p params
    return Recommendation.find(params[:id]).to_json
  end

  get '/api' do
    return Recommendation.all.to_json
  end

  get '/' do
    @recommendations = Recommendation.all

    erb :read_recommendation
  end

  get '/index' do
    erb :index
  end



end
