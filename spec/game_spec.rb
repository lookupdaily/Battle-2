require 'game'
describe Game do

  let(:player){ double :player_1 }

  describe '#attack' do
    it "accepts one argument" do
      expect(subject).to respond_to(:attack).with(1).argument
    end
    
    it 'damages the player' do
      allow(player).to receive(:receive_damage)
      expect(player).to receive(:receive_damage)
      subject.attack(player)
    end
  end
end