require_relative 'agari_checker'

RSpec.describe "agari_checker" do
  let(:hais) {
    "1m 1m 1m 2s 3s 4s 5p 5p 5p 6p 6p 6p 9m 9m"
  }
  subject {
    AgariChecker.agari?(hais)
  }

  it do
    is_expected.to eq true
  end
end
