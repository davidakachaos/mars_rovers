require 'spec_helper'
describe Plateau do
  let(:plateau) { Plateau.new('5 5') }

  it { expect(plateau.max(:x)).to eq 5 }
  it { expect(plateau.max(:y)).to eq 5 }

  it { expect(plateau.max_x).to eq 5 }
  it { expect(plateau.max_y).to eq 5 }
end
