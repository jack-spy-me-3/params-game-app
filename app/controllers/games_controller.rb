class GamesController < ApplicationController
  def name_game_method
    @name = params[:name].upcase
    if @name.start_with?("A")
      @message = "Your name starts with the letter A!"
    end
    # @message = "Your name starts with the letter A!"
    # @image_url = "http://images4.fanpop.com/image/photos/22100000/The-letter-A-the-alphabet-22186936-2560-2560.jpg"
    # @message2 = ""

    render "name_game_view.html.erb"
  end

  def guess_number_method
    @guess = params[:guessed_number].to_i
    @answer = 42
    if @guess > @answer
      @message = "Your guess is too high!"
    elsif @guess < @answer
      @message = "Your guess is too low!"
    else
      @message = "Your answer is correct!"
    end

    render "number_game.html.erb"
  end

  def counter_method
    @number_of_views = params[:visit].to_i
    render "counter_view.html.erb"
  end

  def guess_form_method
    render "guess_form.html.erb"
  end

  def guess_form_result_method
    @guess = params[:guessed_number].to_i
    @answer = 42
    if @guess > @answer
      @message = "Your guess is too high!"
    elsif @guess < @answer
      @message = "Your guess is too low!"
    else
      @message = "Your answer is correct!"
    end
    render "guess_form_result.html.erb"
  end
end
