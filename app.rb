require_relative 'config/environment'

class App < Sinatra::Base
resp = Rack::Response.new

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
     "#{@number * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word_1 = params[:word1]
  @word_2 = params[:word2]
  @word_3 = params[:word3]
  @word_4 = params[:word4]
  @word_5 = params[:word5]
  "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}." 
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # @number.times { |i| "#{@phrase}" }
    phrases = [] 
    @number.times {|i| phrases << @phrase} 
    phrases
  end

  get '/:operation/:number1/:number2' do
    @operation_input = params[:operation]
    @number1_input = params[:number1].to_i
    @number2_input = params[:number2].to_i

    if @operation_input == "add"
      "#{@number1_input + @number2_input}"
    elsif @operation_input == "subtract"
      "#{@number1_input - @number2_input}"
    elsif @operation_input == "multiply"
      "#{@number1_input * @number2_input}"
    elsif @operation_input == "divide"
      "#{@number1_input / @number2_input}"
    end
  end
end