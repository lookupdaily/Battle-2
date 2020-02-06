require 'game'
describe Game do

  let(:player_1){ double :player, :receive_damage}

  describe '#attack' do
    it "accepts one argument" do
      expect(subject).to respond_to(:attack).with(1).argument
    end

    # it 'damages the player' do
      

    #   expect(subject.attack(player1)).to eq("Player 1 was attacked")
    #   dave.attack(mittens)
    # end

  end
end