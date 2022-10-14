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
end
