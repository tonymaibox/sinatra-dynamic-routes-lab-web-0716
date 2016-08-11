require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name]
		erb :reverse
	end

	get '/square/:number' do
		@number = params[:number]
		@num_sq = @number.to_i ** 2
		erb :square
	end

	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase]
		
		@string = []
		@number.times do
			@string << "#{@phrase}\n"
		end
		@string
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@word1 = params[:word1]
		@word2 = params[:word2]
		@word3 = params[:word3]
		@word4 = params[:word4]
		@word5 = params[:word5]
		erb :concat
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation]
		@num1 = params[:number1]
		@num2 = params[:number2]
		erb :operation
	end
end