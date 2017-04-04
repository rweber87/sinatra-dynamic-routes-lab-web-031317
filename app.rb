require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
			@name = params[:name].reverse
			"#{@name}"
	end

	get '/square/:number' do
		@squared_number = params[:number].to_i ** 2
		"#{@squared_number}"
	end

	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		@phrase = params[:phrase]
			"#{@phrase}\n" * @number
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do 
		@sentence = params[:captures].join(" ")
		"#{@sentence}."
	end

	get '/:operation/:number1/:number2' do 
		@operation = params[:operation].downcase
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		if @operation == 'multiply'
			"#{@num1 * @num2}"
		elsif @operation == 'divide'
			"#{@num1 / @num2}"
		elsif @operation == 'add'
			"#{@num1 + @num2}"
		elsif @operation == 'subtract'
			"#{@num1 - @num2}"
		end
	end

end