require "../../spec_helper"

struct Wrapper
  include Processing::Core::Math
end

Spectator.describe Processing::Core::Math do
  subject(math) { Wrapper.new }
  let(tolerance) { Float64::EPSILON * 10 }

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
      expect(&.sin(angle)).to be_within(tolerance).of(0.866025403784438)
    end
  end

  describe "#cos" do
    it "returns the cosine of a value" do
      angle = ::Math::PI / 3
      expect(&.cos(angle)).to be_within(tolerance).of(0.5)
    end
  end

  describe "#tan" do
    it "returns the tangent of a value" do
      angle = ::Math::PI / 3
      expect(&.tan(angle)).to be_within(tolerance).of(1.732050807568877)
    end
  end

  describe "#acos" do
    it "returns the inverse cosine of a value" do
      expect(&.acos(0.5)).to be_within(tolerance).of(::Math::PI / 3)
    end
  end

  describe "#asin" do
    it "returns the inverse sine of a value" do
      expect(&.asin(0.866025403784438)).to be_within(tolerance).of(::Math::PI / 3)
    end
  end

  describe "#atan" do
    it "returns the inverse tangent of a value" do
      expect(&.atan(1.732050807568877)).to be_within(tolerance).of(::Math::PI / 3)
    end
  end

  describe "#atan2" do
    it "returns the inverst tangent of a value" do
      sqrt3 = ::Math.sqrt(3)
      expect(&.atan2(sqrt3, 1)).to be_within(tolerance).of(::Math::PI / 3)
    end
  end

  describe "#log" do
    it "returns the log of a value" do
      expect(&.log(42)).to be_within(tolerance).of(3.7376696182833684)
    end
  end

  describe "#log10" do
    it "returns the base-10 log of a value" do
      expect(&.log10(42)).to be_within(tolerance).of(1.6232492903979006)
    end
  end

  describe "#exp" do
    it "returns the exponential of a value" do
      expect(&.exp(5)).to be_within(tolerance).of(148.413159102576603)
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

      it "gets the minimum value" do
        expect(&.min(values)).to eq(42)
      end
    end

    context "with a list of floats" do
      let(values) { [12.3, 45.6, 78.9, 4.2, 77.7] }

      it "gets the minimum value" do
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

      it "gets the maximum value" do
        expect(&.max(values)).to eq(789)
      end
    end

    context "with a list of floats" do
      let(values) { [12.3, 45.6, 78.9, 4.2, 77.7] }

      it "gets the maximum value" do
        expect(&.max(values)).to eq(78.9)
      end
    end
  end

  describe "#constrain" do
    it "returns low when amt is < low" do
      expect(&.constrain(0, 5, 10)).to eq(5)
    end

    it "returns high when amt is > high" do
      expect(&.constrain(20, 5, 10)).to eq(10)
    end

    it "returns amt when amt is > high and < low" do
      expect(&.constrain(7, 5, 10)).to eq(7)
    end
  end

  describe "#dist" do
    context "2D" do
      it "returns the distance between points" do
        # 3-4-5 triangle
        x1, y1 = {10, 20}
        x2, y2 = {13, 24}
        expect(&.dist(x1, y1, x2, y2)).to eq(5)
      end
    end

    context "3D" do
      it "returns the distance between points" do
        # 3-4-5 triangle
        x1, y1, z1 = {10, 20, 30}
        x2, y2, z2 = {12, 22, 33}
        expect(&.dist(x1, y1, z1, x2, y2, z2)).to be_within(tolerance).of(4.123105625617661)
      end
    end
  end

  describe "#lerp" do
    it "returns start when amt is 0" do
      expect(&.lerp(5.0, 10.0, 0.0)).to eq(5)
    end

    it "returns stop when amt is 1" do
      expect(&.lerp(5.0, 10.0, 1.0)).to eq(10)
    end

    it "returns a mid-point when amt is between 0 and 1" do
      expect(&.lerp(5.0, 10.0, 0.4)).to eq(7)
    end
  end

  describe "#degrees" do
    it "converts radians to degrees" do
      expect(&.degrees(Math::PI / 3)).to be_within(tolerance).of(60)
    end
  end

  describe "#radians" do
    it "converts degrees to radians" do
      expect(&.radians(60)).to be_within(tolerance).of(Math::PI / 3)
    end
  end

  describe "#mag" do
    it "computes the magnitude of a 2D vector" do
      expect(&.mag(3.0, 4.0)).to be_within(tolerance).of(5)
    end

    it "computes the magnitude of a 3D vector" do
      expect(&.mag(1.0, 2.0, 3.0)).to be_within(tolerance).of(3.741657386773941)
    end
  end

  describe "#norm" do
    it "normalizes a value to the specified range" do
      expect(&.norm(12.0, 10.0, 20.0)).to be_within(tolerance).of(0.2)
    end

    it "doesn't clamp between 0 and 1" do
      aggregate_failures "upper and lower" do
        expect(&.norm(5.0, 10.0, 20.0)).to be_within(tolerance).of(-0.5)
        expect(&.norm(30.0, 10.0, 20.0)).to be_within(tolerance).of(2.0)
      end
    end
  end

  describe "#map" do
    it "transforms a value from one range to another" do
      expect(&.map(12.0, 10.0, 20.0, 0.0, 50.0)).to be_within(tolerance).of(10.0)
    end

    it "doesn't clamp to the second range" do
      aggregate_failures "upper and lower" do
        expect(&.map(5.0, 10.0, 20.0, 0.0, 50.0)).to be_within(tolerance).of(-25.0)
        expect(&.map(30.0, 10.0, 20.0, 0.0, 50.0)).to be_within(tolerance).of(100.0)
      end
    end
  end
end
