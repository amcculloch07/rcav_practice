class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
  @number = params[:id].to_f
  @square = @number**2
  render("square.html.erb")
  end

  def square_root
  @number = params[:id].to_f
  @square_root = (@number**(0.5))
  render("square_root.html.erb")
  end

  def random
    @first = params[:first].to_f
    @last = params[:last].to_f
    @random = [rand(@first...@last)]

    render("random.html.erb")
  end

  def payment

    @apr = params[:int].to_f
    @years = params[:yr].to_i
    @principal = params[:p].to_f

    @n = @years*12
    @i = (@apr/100)/12
    @d = (((1 + @i)**@n) - 1) / (@i*(1 + @i)**@n)

    @monthly_payment = @principal/@d

    render("payment.html.erb")
  end

end
