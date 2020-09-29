require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do 
        # binding.pry
        phrase = PigLatinizer.new
        @piglatin = phrase.piglatinize(params[:user_phrase])
        erb :results
    end
end