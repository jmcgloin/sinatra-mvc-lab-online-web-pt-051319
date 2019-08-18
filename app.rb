require_relative 'config/environment'

class App < Sinatra::Base
	get('/'){ erb :user_input }
	post('/piglatinize') do
		@english = params[:user_phrase]
		erb :pig_latinizer
	end
end