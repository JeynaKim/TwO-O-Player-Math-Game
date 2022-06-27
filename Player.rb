class Player
  attr_reader :name, :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def reduce_lives
    @lives = @lives - 1
  end
end
