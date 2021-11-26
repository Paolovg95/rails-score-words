class InputController < ApplicationController
  def home
  end

  def score
    @input = params[:input]
    @score = 0
    @input.upcase
    input_letters = @input.each_char.group_by(&:itself).transform_values(&:count)

    letters_count = input_letters.length
    sorted_input = input_letters.sort_by {| k, v | [-v,k]}
    alphabet_score = (1..26).to_a.length

    sorted_input.each do |letter|
      @score = @score + ( alphabet_score * letter[1] )
      alphabet_score = alphabet_score - 1
    end

  end
end
