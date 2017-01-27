require_relative 'agari_checker'

RSpec.describe "agari_checker" do
  let(:hais) {
    "1m1m1m 2s3s4s 5p5p5p 6p6p6p 9m9m"
   }
   subject {
     AgariChecker.agari?(hais)
   }
   
  it do
    is_expected.to be_truthly
  end
end
