require 'player'

describe Player do

  subject(:dave) {Player.new("dave")}
  subject(:mittens) {Player.new("mittens")}

  describe " #name" do
    it 'should respond to name' do
      expect(subject).to respond_to(:name)
    end

    it "should return dave" do
      expect(dave.name).to eq "dave"
    end

  end

  describe " #hit_points" do
    it "should respond to score" do
      expect(dave.hit_points).to eq 100
    end
  end

  describe " #receive_damage" do
    it "should reduce score by specified value" do
      dave.receive_damage
      expect(dave.hit_points).to eq 90
    end
  end

end