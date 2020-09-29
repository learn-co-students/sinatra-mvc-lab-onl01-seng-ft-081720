require_relative 'config/environment'

class App < Sinatra::Base
      get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        # binding.pry
        @latinizer = PigLatinizer.new.piglatinize(params[:user_phrase])
        status 200
        erb :piglatinize  
    end
end