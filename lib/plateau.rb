class Plateau
  attr_reader :top
  attr_reader :max_x
  attr_reader :max_y

  def initialize(coords)
    @max_x, @max_y = coords.split(' ').map(&:to_i)
  end

  def max(ax)
    send("max_#{ax}")
  end
end
