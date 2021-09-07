require "../../spec_helper"

struct Wrapper
  include Processing::Core::Math
end

Spectator.describe Processing::Core::Math do
  subject(math) { Wrapper.new }

  TOLERANCE = Float64::EPSILON * 10

  describe "#abs" do
    it "returns the absolute value" do
      expect(&.abs(-5)).to eq(5)
    end
  end

  describe "#ceil" do
    it "returns a rounded up value" do
      expect(&.ceil(4.2)).to eq(5)
    end
  end

  describe "#floor" do
    it "returns a rounded down value" do
      expect(&.floor(7.77)).to eq(7)
    end
  end

  describe "#round" do
    it "rounds to the nearest integer" do
      aggregate_failures "rounding" do
        expect(&.round(4.2)).to eq(4)
        expect(&.round(1.9)).to eq(2)
      end
    end
  end

  describe "#sq" do
    it "squares a value" do
      expect(&.sq(8)).to eq(64)
    end
  end

  describe "#sqrt" do
    it "returns the square-root of a value" do
      expect(&.sqrt(25)).to eq(5)
    end
  end

  describe "#pow" do
    it "returns the power of a value" do
      expect(&.pow(5, 3)).to eq(125)
    end
  end

  describe "#sin" do
    it "returns the sine of a value" do
      angle = ::Math::PI / 3
      expect(&.sin(angle)).to be_within(TOLERANCE).of(0.866025403784438)
    end
  end

  describe "#cos" do
    it "returns the cosine of a value" do
      angle = ::Math::PI / 3
      expect(&.cos(angle)).to be_within(TOLERANCE).of(0.5)
    end
  end

  describe "#tan" do
    it "returns the tangent of a value" do
      angle = ::Math::PI / 3
      expect(&.tan(angle)).to be_within(TOLERANCE).of(1.732050807568877)
    end
  end

  describe "#acos" do
    it "returns the inverse cosine of a value" do
      expect(&.acos(0.5)).to be_within(TOLERANCE).of(::Math::PI / 3)
    end
  end

  describe "#asin" do
    it "returns the inverse sine of a value" do
      expect(&.asin(0.866025403784438)).to be_within(TOLERANCE).of(::Math::PI / 3)
    end
  end

  describe "#atan" do
    it "returns the inverse tangent of a value" do
      expect(&.atan(1.732050807568877)).to be_within(TOLERANCE).of(::Math::PI / 3)
    end
  end

  describe "#atan2" do
    it "returns the inverst tangent of a value" do
      sqrt3 = ::Math.sqrt(3)
      expect(&.atan2(sqrt3, 1)).to be_within(TOLERANCE).of(::Math::PI / 3)
    end
  end

  describe "#log" do
    it "returns the log of a value" do
      expect(&.log(42)).to be_within(TOLERANCE).of(3.7376696182833684)
    end
  end

  describe "#log10" do
    it "returns the base-10 log of a value" do
      expect(&.log10(42)).to be_within(TOLERANCE).of(1.6232492903979006)
    end
  end

  describe "#exp" do
    it "returns the exponential of a value" do
      expect(&.exp(5)).to be_within(TOLERANCE).of(148.413159102576603)
    end
  end

  describe "#min" do
    context "with individual arguments" do
      it "gets the minimum value" do
        expect(&.min(123, 321)).to eq(123)
      end
    end

    context "with a list of integers" do
      let(values) { [123, 456, 789, 42, 777] }

      pending "gets the minimum value" do
        expect(&.min(values)).to eq(42)
      end
    end

    context "with a list of floats" do
      let(values) { [12.3, 45.6, 78.9, 4.2, 77.7] }

      pending "gets the minimum value" do
        expect(&.min(values)).to eq(4.2)
      end
    end
  end

  describe "#max" do
    context "with individual arguments" do
      it "gets the maximum value" do
        expect(&.max(321, 123)).to eq(321)
      end
    end

    context "with a list of integers" do
      let(values) { [123, 456, 789, 42, 777] }

      pending "gets the maximum value" do
        expect(&.max(values)).to eq(789)
      end
    end

    context "with a list of floats" do
      let(values) { [12.3, 45.6, 78.9, 4.2, 77.7] }

      pending "gets the maximum value" do
        expect(&.max(values)).to eq(78.9)
      end
    end
  end
end
