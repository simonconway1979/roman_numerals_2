require 'roman_numeral'

describe RomanNumeral do

  let(:subject) {described_class.new}

  it "returns I when passed 1 as an argument " do
    expect(subject.roman(1)).to eq "I"
  end

  it "returns II when passed 2 as an argument" do
    expect(subject.roman(2)).to eq "II"
  end

  it "returns V when passed 5 as an argument" do
    expect(subject.roman(5)).to eq "V"
  end


end
