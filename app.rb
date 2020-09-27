require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input  
    end
  # end

  # # post '/piglatinize' do
  # #   @string = PigLatinizer.new(params[:user_phrase])
  # #   erb :piglatinize
  # # end

  post '/piglatinize' do 
    lang = PigLatinizer.new
    @string = lang.pig(params[:user_phrase])  
    erb :piglatinize
  #   end 
  end 

end