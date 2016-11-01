require 'spec_helper'
describe 'a Rover' do
  let(:plateau) { Plateau.new('5 5') }
  let(:rover) { Rover.new('1 2 N', plateau) }
  let(:rover2) { Rover.new('0 0 N', plateau) }

  it { expect(rover.plateau).to eq plateau }
  it { expect(rover.heading).to eq 'N' }
  it { expect(rover.current_position).to eq '1 2 N' }

  it 'processes a simple command correctly' do
    expect(rover).to receive(:m)
    expect(rover).to receive(:l)
    expect(rover).to receive(:r)
    rover.command('MLR')
    expect(rover.current_position).to eq '1 2 N'
  end

  it 'moves forward correctly' do
    rover2.command('M')
    expect(rover2.current_position).to eq '0 1 N'
  end

  context 'when facing North' do
    let(:rover) { Rover.new('1 2 N', plateau) }

    it 'turns right when told' do
      expect(rover.heading).to eq 'N'
      rover.command('R')
      expect(rover.heading).to eq 'E'
    end

    it 'turns right when told' do
      expect(rover.heading).to eq 'N'
      rover.command('L')
      expect(rover.heading).to eq 'W'
    end
  end

  context 'near the edge' do
    let(:rover) { Rover.new('5 5 N', plateau) }
    it { expect { rover.command('M') }.to raise_error(RoverFallsException) }
  end
end
