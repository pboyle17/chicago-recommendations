require 'bundler'

Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter=>'postgresql',
  :database=>'chicago_recommendations'
)

get '/' do
  erb :home
end

post '/thanks' do
  some_recommendation=Recommendation.new
  some_recommendation.place=params[:place]
  some_recommendation.contributor=params[:contributor]
  some_recommendation.notes=params[:notes]
  some_recommendation.type_of_place=params[:type_of_place]
  some_recommendation.save
  @recommendations=Recommendation.all
  erb :thanks
end

get '/api' do
  Recommendation.all.to_json
end
