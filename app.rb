require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/' do
        @transformed_text = Piglatinizer.new(params[:input_text]).piglatinize

        erb :piglatinized
    end
end