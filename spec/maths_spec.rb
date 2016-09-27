require "spec_helper"

describe Maths::Number do
  describe "#number" do
    it "a number should be readable" do
      number = Maths::Number.new(778)
      expect(number.number).to eq(778)
    end

    it "a number should not be writable and raises NoMethodError" do
      number = Maths::Number.new(778)
      expect{
        number.number = 800
      }.to raise_error(NoMethodError)
      expect(number.number).to eq(778)
    end
  end

  describe "#factorial" do
    it "should return 1 when given 0" do
      number = Maths::Number.new(0)
      expect(number.n!).to eq(1)
    end

    it "should return 1 when given 1" do
      number = Maths::Number.new(1)
      expect(number.n!).to eq(1)
    end

    it "should return 2 when given 2" do
      number = Maths::Number.new(2)
      expect(number.n!).to eq(2)
    end

    it "should return 120 when given 5" do
      number = Maths::Number.new(5)
      expect(number.n!).to eq(120)
    end

    it "should return 24 when given 4" do
      number = Maths::Number.new(4)
      expect(number.n!).to eq(24)
    end

    it "should return Infinity when given -1" do
      number = Maths::Number.new(-1)
      expect(number.n!).to eq(Float::INFINITY)
    end
  end

  # calculate half if the given integer is positive and even
  describe "#calculate_half"  do

    it "should return 2 when given 4" do
      number = Maths::Number.new(4)
      expect(number.calculate_half).to eq(2)
    end

    it "should return 0 when given 3" do
      number = Maths::Number.new(3)
      expect(number.calculate_half).to eq(0)
    end

   it "should return 8 when given 16 " do
      number = Maths::Number.new(16)
      expect(number.calculate_half).to eq(8)
    end

  end


# return 3*n + 1 for positive odd intergers
  describe "#thrice_n_plus_one" do

    it "should return 4 when given 1" do
    number = Maths::Number.new(1)
    expect(number.thrice_n_plus_one).to eq(4)
    end

    it "should return 0 when given 4" do
      number = Maths::Number.new(4)
      expect(number.thrice_n_plus_one).to eq(0)
    end

    it "should return 16 when given 5" do
      number = Maths::Number.new(5)
      expect(number.thrice_n_plus_one).to eq(16)
    end

    it "should return 0 when given -3 " do
      number = Maths::Number.new(-3)
      expect(number.thrice_n_plus_one).to eq(0)
    end

  end


# collatz conjecture

describe "#cycle_count" do

  it "should return 1 when given 1" do
    number = Maths::Number.new(1)
    expect(number.cycle_count).to eq(1)
  end

  it "should return 2 when given 2" do
    number = Maths::Number.new(2)
    expect(number.cycle_count).to eq(2)
  end

  it "should return 8 when given 3" do
  number = Maths::Number.new(3)
  expect(number.cycle_count).to eq(8)
end

it "should return INFINITY when given 0" do
  number = Maths::Number.new(0)
  expect(number.cycle_count).to eq(Float::INFINITY)
end




end


end
