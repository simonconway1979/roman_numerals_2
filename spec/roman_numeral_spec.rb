require 'roman_numeral'

describe RomanNumeral do

  let(:subject) {described_class.new(1)}

  it "returns I when passed 1 as an argument " do
    expect(subject.roman).to eq "I"
  end
end
