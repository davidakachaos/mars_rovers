#
# Class Rover provides a Rover
#
# @author David Westerink <davidakachaos@gmail.com>
#
class Rover
  HEADINGS = %w(N E S W).freeze
  MOVEMENT = { 'N' => [:y, 1],
               'E' => [:x, 1],
               'S' => [:y, -1],
               'W' => [:x, -1] }.freeze

  attr_reader :position
  attr_reader :plateau

  def initialize(setting_string, plateau)
    @plateau = plateau
    x, y, self.heading = setting_string.split(' ')
    @position = { x: x.to_i, y: y.to_i }
  end

  def heading
    HEADINGS[@facing]
  end

  def heading=(facing)
    @facing = HEADINGS.index(facing)
  end

  def current_position
    "#{@position[:x]} #{@position[:y]} #{heading}"
  end

  def command(command_string)
    # LMLMLMLMM
    command_string.downcase.split('').each do |command|
      send command.to_sym
    end
  end

  private

  def error_move(axis, val)
    val.negative? || @plateau.max(axis) < val
  end

  def m
    axis, change = MOVEMENT[heading].flatten
    # Guard against out of bounds
    raise RoverFallsException if error_move(axis, @position[axis] + change)
    @position[axis] += change
  end

  def l
    @facing -= 1
    @facing = 3 if @facing < 0
  end

  def r
    @facing += 1
    @facing = 0 if @facing == 4
  end
end
