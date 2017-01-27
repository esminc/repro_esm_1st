require_relative 'agari_checker'

RSpec.describe "agari_checker" do
  let(:hais) {
    "1m1m1m2s3s4s5p5p5p6p6p6p9m9m"
  }
  subject {
    AgariChecker.agari?(hais)
  }

  it do
    is_expected.to eq true
  end
end
