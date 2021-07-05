require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse 
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i 
    @squared_number.to_s
  end

  get '/say/:number/:phrase' do
    @m_number = params[:phrase] * params[:number].to_i  
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do  
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end

  get '/:operation/:number1/:number2' do 
   @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
   if params[:operation] == "add"
      @result = (@number1 + @number2).to_s
   elsif params[:operation] == "subtract"
    @result = (@number1 - @number2).to_s
   elsif params[:operation] == "multiply"
    @result = (@number1 * @number2).to_s
   elsif params[:operation] == "divide"
    @result = (@number1 / @number2).to_s
    end 
  end
end