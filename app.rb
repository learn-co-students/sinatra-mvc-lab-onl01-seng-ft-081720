require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
      end
      post '/piglatinize' do 

        piggy = PigLatinizer.new
        @string = piggy.pig(params[:user_phrase])  
        erb :piglatinize
      
      end 
  end
