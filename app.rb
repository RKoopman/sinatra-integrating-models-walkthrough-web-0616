require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'


class App < Sinatra::Base

  get '/' do
    erb :index
  end


post '/' do
  @num_of_words = TextAnalyzer.new(params[:user_text]).count_of_words
  erb :results
end


end