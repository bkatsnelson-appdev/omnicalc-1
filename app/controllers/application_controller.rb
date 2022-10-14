class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    #params = {"number" => "42"}

    @num = params.fetch("number").to_f
    @square_of_num = @num * @num
    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def blank_rand_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def calculate_random
    #params = {"min" => "5", "max => "10"}

    @lower = params.fetch("min").to_f
    @upper = params.fetch("max").to_f
    @result = rand(@lower..@upper)
    render({ :template => "calculation_templates/rand_results.html.erb" })
  end

  def blank_sqrt_form
    render({ :template => "calculation_templates/sqrt_form.html.erb" })
  end

  def calculate_sqrt
    #params = {"number" => "42"}

    @num = params.fetch("number").to_f
    @sqrt_of_num = @num ** (0.5)
    render({ :template => "calculation_templates/sqrt_results.html.erb" })
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def calculate_payment
    #params = {"min" => "5", "max => "10"}

    @apr = params.fetch("apr").to_f
    @apr_dec = @apr / 100
    @num_years = params.fetch("num_years").to_f
    @principal = params.fetch("principal").to_f
    @r = @apr_dec / 12.0
    @n = @num_years * 12.0
    @numerator = @r * @principal
    @denomenator = 1.0 - (1 + @r) ** (-1 * @n)
    @result = @numerator / @denomenator

    render({ :template => "calculation_templates/payment_results.html.erb" })
  end
end
