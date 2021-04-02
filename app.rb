require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    @user_number = params[:number].to_i
    concet_string = ""
    @user_number.times do
      concet_string += params[:phrase]
    end
    concet_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
      @operation_sign = params[:operation]
      if @operation_sign == "add"
        @result = params[:number1].to_i + params[:number2].to_i
      elsif @operation_sign == "subtract"
        @result = params[:number2].to_i - params[:number1].to_i
      elsif @operation_sign == "multiply"
        @result = params[:number1].to_i * params[:number2].to_i
      elsif @operation_sign == "divide"
        @result = params[:number1].to_i / params[:number2].to_i
      end
      @result.to_s
  end
end