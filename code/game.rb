require_relative 'player'
require_relative 'computer'
require_relative 'display'

class Game
  include Display

  def initialize
  end

  def start_game
    set_roles
    make_code
    puts @code
  end

  private

  def set_roles
    if ask_player_codemaker?
      @codemaker = Player.new
      @codebreaker = Computer.new
    else
      @codemaker = Computer.new
      @codebreaker = Player.new
    end
  end

  def make_code
    @code = @codemaker.generate_code
  end
end
