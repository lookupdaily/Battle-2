require 'game'
describe Game do

  let(:player_1){ double :player_1 }
  let(:player_2) { double :player_2 }
  subject { described_class.new(player_1, player_2)}
  

  it 'can accept two players' do
    expect(described_class).to respond_to(:new).with(2).arguments
  end

  it 'returns player 1' do
    expect(subject.player_1).to eq player_1
  end

  it 'returns player 2' do
    expect(subject.player_2).to eq player_2
  end

  describe '#attack' do
    it "accepts one argument" do
      expect(subject).to respond_to(:attack).with(1).argument
    end
    
    it 'damages the player' do
      allow(player_1).to receive(:receive_damage)
      expect(player_1).to receive(:receive_damage)
      subject.attack(player_1)
    end
  end
end