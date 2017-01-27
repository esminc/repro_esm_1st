require_relative 'agari_checker'

RSpec.describe "Hand" do
  let(:hand) { "1m 1m 1m 2s 3s 4s 5p 5p 5p 6p 6p 6p 9m 9m"}

  it "" do
    h = Hand.new(hand)
    expect(h.agari?).to eq true

    # p(Hand.new(hand).koutsus.to_a)
    # p(Hand.new(hand).juntsus.to_a)
  end
end
