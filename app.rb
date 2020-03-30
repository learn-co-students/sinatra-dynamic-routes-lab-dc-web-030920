require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
      "Hello World"
    end
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    (@number.to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @output = []
    @number.to_i.times do
      @output << @phrase
    end
    "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @sum = @number1.to_i + @number2.to_i
      "#{@sum}"
    elsif @operation == "subtract"
      @diff = @number1.to_i - @number2.to_i
      "#{@diff}"
    elsif @operation == "multiply"
      @product = @number1.to_i * @number2.to_i
      "#{@product}"
    elsif @operation == "divide"
      @quotient = @number1.to_i / @number2.to_i
      "#{@quotient}"
    end
  end

end