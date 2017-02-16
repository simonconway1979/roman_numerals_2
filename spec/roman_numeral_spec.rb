require 'roman_numeral'

describe RomanNumeral do

  let(:subject) {described_class.new}


  context "Single digit numbers" do
    it "returns I when passed 1 as an argument " do
      expect(subject.roman(1)).to eq "I"
    end

    it "returns II when passed 2 as an argument" do
      expect(subject.roman(2)).to eq "II"
    end

    it "returns V when passed 5 as an argument" do
      expect(subject.roman(5)).to eq "V"
    end

    it "returns VIII when passed 8 as an argument" do
      expect(subject.roman(8)).to eq "VIII"
    end

    it "returns IV when passed 4 as an argument" do
      expect(subject.roman(4)).to eq "IV"
    end

    it "returns IX when passed 9 as an argument" do
      expect(subject.roman(9)).to eq "IX"
    end
  end

  context "multiple digit numbers (over 9)" do
    it "should split a multiple digit number into an array" do
      expect(subject.number_array(15)).to eq(["5", "1"])
    end

    it "returns XI when passed 11 as an argument" do
      expect(subject.roman(11)).to eq "XI"
    end

    it "returns CLIX when passed 159 as an argument" do
      expect(subject.roman(159)).to eq "CLIX"
    end

  end

end
