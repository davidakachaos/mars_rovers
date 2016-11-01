class RoverFallsException < ::StandardError
  def to_s
    'Rover fell off the plateau. It is broken now!'
  end
end
