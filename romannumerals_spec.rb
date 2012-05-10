require_relative "./romannumerals.rb"

describe "Roman Numerals Converter" do
  before :each do
    @numerals = RomanNumerals.new
  end

  context "special symbols" do
    it "converts 1 to I" do
      @numerals.toRoman( 1 ).should eq "I"
    end

    it "converts 5 to V" do
      @numerals.toRoman( 5 ).should eq "V"
    end

    it "converts 10 to X" do
      @numerals.toRoman( 10 ).should eq "X"
    end

    it "converts 50 to L" do
      @numerals.toRoman( 50 ).should eq "L"
    end

    it "converts 100 to C" do
      @numerals.toRoman( 100 ).should eq "C"
    end
  end

  context "addition" do
    it "converts 2 to II" do
      @numerals.toRoman( 2 ).should eq "II"
    end

    it "converts 3 to III" do
      @numerals.toRoman( 3 ).should eq "III"
    end

    it "converts 27 to XXVII" do
      @numerals.toRoman( 27 ).should eq "XXVII"
    end
  end

  context "subtraction" do
    it "converts 4 to IV" do
      @numerals.toRoman( 4 ).should eq "IV"
    end

    it "converts 9 to IX" do
      @numerals.toRoman( 9 ).should eq "IX"
    end

    it "converts 40 to XL" do
      @numerals.toRoman( 40 ).should eq "XL"
    end

    it "converts 90 to XC" do
      @numerals.toRoman( 90 ).should eq "XC"
    end
  end
end
