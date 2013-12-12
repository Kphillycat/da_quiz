require 'bundler'
require './lib/quiz_game'
Bundler.require

module Quiz
	class App < Sinatra::Application
		get '/quiz' do
			erb :quiz
		end

		post '/quiz' do
			@result = QuizGame.new
			erb :results
		end

	end
end