require 'spec_helper'
describe RoverFallsException do
  let(:error_object) { RoverFallsException.new }
  it { expect(error_object.to_s).to eq 'Rover fell off the plateau. It is broken now!' }
end
