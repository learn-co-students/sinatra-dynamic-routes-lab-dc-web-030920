require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do 
    answer = ''
    @times = params[:number].to_i
    @phrase = params[:phrase]

    @times.times do 
      answer += @phrase
    end
    answer
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
  

    if params[:operation] == 'add'
     answer = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == 'subtract'
      answer = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == 'multiply'
      answer = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == 'divide'
      answer = (params[:number1].to_i / params[:number2].to_i).to_s
    end
    answer
  end



end