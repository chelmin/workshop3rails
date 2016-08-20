class GuessesController < ApplicationController
  before_action :set_game

  def create
    guess = @game.guesses.create!(guess_params)

    if guess.number == @game.number
      @game.update(completed: true)
      redirect_to game_path(@game), flash: { notice: 'Correct! You win!'}
    else
      redirect_to game_path(@game), flash: { notice: 'Nope, try again.'}
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

#sets parameters for user input; white listing attributes
  def guess_params
    params.require(:guess).permit(:number)
  end

end