class Computer
  def initialize; end

  def name
    'Computer'
  end

  def generate_code
    code = []
    4.times do
      code.push(rand(6))
    end
    code
  end
end
