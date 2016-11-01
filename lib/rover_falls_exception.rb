#
# Class RoverFallsException provides the RoverFalls exception
#
# @author David Westerink <davidakachaos@gmail.com>
#
class RoverFallsException < ::StandardError
  def to_s
    'Rover fell off the plateau. It is broken now!'
  end
end
