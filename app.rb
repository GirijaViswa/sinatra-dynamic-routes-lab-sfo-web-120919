require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @number = @number.to_i
    @result = @number * @number
    @result = @result.to_s
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number = @number.to_i
    arr = []
    i = 0
    while i < @number do
     arr << @phrase
      i += 1
    end
    "#{arr.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 +" "+ @word2 +" "+@word3 +" "+ @word4 +" "+ @word5}" +"."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    @num1 = @num1.to_i
    @num2 = @num2.to_i
    if @operation == 'add'
      @result = @num1 + @num2
      "#{@result}"
    elsif @operation == 'subtract'
      @result = @num1 - @num2
      "#{@result}"
    elsif @operation == 'multiply'
      @result = @num1 * @num2
      "#{@result}"
    else
      @result = @num1 / @num2
      "#{@result}"
    end
  end

end