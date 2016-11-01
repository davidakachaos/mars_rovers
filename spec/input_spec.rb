# Test Input:
# 5 5
# 1 2 N
# LMLMLMLMM
# 3 3 E
# MMRMMRMRRM
# Expected Output:
# 1 3 N
# 5 1 E
require 'spec_helper'
describe 'given a test input' do
  let(:plateu) { Plateau.new('5 5') }
  let(:rover1) { Rover.new('1 2 N', plateu) }
  let(:rover2) { Rover.new('3 3 E', plateu) }

  it 'has a plateu of 5x5' do
    expect(plateu.max_x).to eq 5
    expect(plateu.max_y).to eq 5
  end

  it 'should set the correct coords for a Rover' do
    expect(rover1.position[:x]).to eq 1
    expect(rover1.position[:y]).to eq 2
    expect(rover1.heading).to eq 'N'
    expect(rover1.current_position).to eq '1 2 N'
  end

  it 'follows the commands given correctly' do
    rover1.command('LMLMLMLMM')
    rover2.command('MMRMMRMRRM')

    expect(rover1.current_position).to eq '1 3 N'
    expect(rover2.current_position).to eq '5 1 E'
  end
end
