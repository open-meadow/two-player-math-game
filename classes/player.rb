class Player
  def initialize(current_player)
    @player = current_player
    @lives = 3
  end

  attr_accessor :player , :lives
end