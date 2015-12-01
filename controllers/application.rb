#defining the starting point for my Applicaiton
#this used to be app.rb
#now we are going to give controllers a chance to organize our code
class ApplicationController < Sinatra::Base
  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter=>'postgresql',
    :database=>'chicago_recommendations'
  )

  # I need to specify my views folder
  set :views, File.expand_path('../../views',__FILE__)

  if not_found do
    erb :fourofour
  end


end
