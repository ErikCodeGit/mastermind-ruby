class Player
  def initialize; end

  def name
    'Player'
  end

  def generate_code
    puts 'Enter your secret code (4 digits, numbers 1-6):'
    code = []
    loop do
      code = gets.chomp.chars
      break if code.all? { |char| char.to_i.between?(1, 6) }

      puts 'Invalid code, try again: '
    end
    code
  end
end
