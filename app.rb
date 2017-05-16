require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:num" do
    num = params[:num].to_i
    (num * num).to_s
  end

  get "/say/:num/:phrase" do
    phrase = ""
    (params[:num].to_i).times { |i| phrase += "#{params[:phrase]}\n"}
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:oper/:num1/:num2" do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    case params[:oper]
    when "add"
      (num1 + num2).to_s
    when "subtract"
      (num1 - num2).to_s
    when "multiply"
      (num1 * num2).to_s
    when "divide"
      (num1 / num2).to_s
    end
  end
end
