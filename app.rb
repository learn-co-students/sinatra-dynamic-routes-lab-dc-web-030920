require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i
    @squared_number.to_s

  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s

    result = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do

    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == "add"
      @sum = (@number_1 + @number_2).to_s
    elsif @operation == "subtract"
      @subtract = (@number_2 - @number_1).to_s
    elsif @operation == "multiply"
      @multiply = (@number_1 * @number_2).to_s
    elsif @operation == "divide"
      @divide = (@number_1 / @number_2).to_s
    end


  end

end