module Display
  def display_board; end

  def ask_player_codemaker?
    puts 'Do you want to be the Codemaker? (y, n)'
    gets.chomp.downcase == 'y'
  end
end
