require_relative 'agari_checker'

RSpec.describe "Hand" do
  let(:hand) { "1s 1s 1s 2s 3s 4s 5p 5p 5p 6p 6p 6p 9m 9m"}

  it "agari?" do
    h = Hand.new(hand)
    expect(h.agari?).to eq true
  end

  context 'false agari' do
    let(:hand) { "1s 1s 2s 3s 4s 1s 5p 5p 5p 6p 6p 6p 9m 1p"}

    it "agari?" do
      h = Hand.new(hand)
      expect(h.agari?).to eq false
    end
  end
end
