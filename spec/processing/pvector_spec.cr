require "../spec_helper"

Spectator.describe Processing::PVector do
  subject(vector) { described_class.new(12.3, 45.6, 78.9) }
  let(tolerance) { 0.0001 }

  it "defaults to zeroes" do
    vector = described_class.new
    expect(vector.x).to eq(0)
    expect(vector.y).to eq(0)
    expect(vector.z).to eq(0)
  end

  it "sets the coordinates" do
    vector = described_class.new(10.0, 20.0, 30.0)
    expect(vector.x).to eq(10.0)
    expect(vector.y).to eq(20.0)
    expect(vector.z).to eq(30.0)
  end

  describe "#set" do
    it "sets the coordinates" do
      vector.set(10.0, 20.0, 30.0)
      aggregate_failures "coordinates" do
        expect(&.x).to eq(10.0)
        expect(&.y).to eq(20.0)
        expect(&.z).to eq(30.0)
      end
    end

    it "returns the same instance" do
      returned = vector.set(0, 0, 0)
      expect(returned).to be(vector)
    end

    context "with another vector" do
      let(other) { described_class.new(10.0, 20.0, 30.0) }

      it "sets the coordinates" do
        vector.set(other)
        aggregate_failures "coordinates" do
          expect(&.x).to eq(10.0)
          expect(&.y).to eq(20.0)
          expect(&.z).to eq(30.0)
        end
      end

      it "returns the same instance" do
        returned = vector.set(other)
        expect(returned).to be(vector)
      end
    end

    context "with a 2-element array" do
      let(other) { [10.0, 20.0] }

      it "sets the x and y-coordinates" do
        vector.set(other)
        aggregate_failures "coordinates" do
          expect(&.x).to eq(10.0)
          expect(&.y).to eq(20.0)
          expect(&.z).to eq(0.0)
        end
      end

      it "returns the same instance" do
        returned = vector.set(other)
        expect(returned).to be(vector)
      end
    end

    context "with a 3-element array" do
      let(other) { [10.0, 20.0, 30.0] }

      it "sets the coordinates" do
        vector.set(other)
        aggregate_failures "coordinates" do
          expect(&.x).to eq(10.0)
          expect(&.y).to eq(20.0)
          expect(&.z).to eq(30.0)
        end
      end

      it "returns the same instance" do
        returned = vector.set(other)
        expect(returned).to be(vector)
      end
    end
  end

  describe "#array" do
    subject { vector.array }

    it "returns an array of coordinates" do
      is_expected.to eq([12.3_f32, 45.6_f32, 78.9_f32])
    end
  end

  describe "#to_a" do
    subject { vector.to_a }

    it "returns an array of coordinates" do
      is_expected.to eq([12.3_f32, 45.6_f32, 78.9_f32])
    end
  end

  describe "#mag_sq" do
    subject { vector.mag_sq }

    it "is the magnitude squared" do
      is_expected.to be_within(0.001).of(8455.86)
    end
  end

  describe "#mag" do
    subject { vector.mag }

    it "is the magnitude" do
      is_expected.to be_within(tolerance).of(91.955750228)
    end
  end

  describe "#add" do
    context "with another vector" do
      let(other) { described_class.new(10.0, 20.0, 30.0) }

      it "adds to the vector" do
        vector.add(other)
        aggregate_failures "coordinates" do
          expect(vector.x).to be_within(tolerance).of(22.3)
          expect(vector.y).to be_within(tolerance).of(65.6)
          expect(vector.z).to be_within(tolerance).of(108.9)
        end
      end

      it "returns the vector" do
        returned = vector.add(other)
        expect(returned).to be(vector)
      end
    end

    context "with two coordinates" do
      it "adds to the vector" do
        vector.add(10.0, 20.0)
        aggregate_failures "coordinates" do
          expect(vector.x).to be_within(tolerance).of(22.3)
          expect(vector.y).to be_within(tolerance).of(65.6)
          expect(vector.z).to be_within(tolerance).of(78.9)
        end
      end

      it "returns the vector" do
        returned = vector.add(10.0, 20.0)
        expect(returned).to be(vector)
      end
    end

    context "with three coordinates" do
      it "adds to the vector" do
        vector.add(10.0, 20.0, 30.0)
        aggregate_failures "coordinates" do
          expect(vector.x).to be_within(tolerance).of(22.3)
          expect(vector.y).to be_within(tolerance).of(65.6)
          expect(vector.z).to be_within(tolerance).of(108.9)
        end
      end

      it "returns the vector" do
        returned = vector.add(10.0, 20.0, 30.0)
        expect(returned).to be(vector)
      end
    end
  end

  describe ".add" do
    let(v1) { described_class.new(1.0, 2.0, 3.0) }
    let(v2) { described_class.new(10.0, 20.0, 30.0) }

    context "with two vectors" do
      subject { described_class.add(v1, v2) }

      it "adds the vectors" do
        aggregate_failures "coordinates" do
          expect(&.x).to be_within(tolerance).of(11.0)
          expect(&.y).to be_within(tolerance).of(22.0)
          expect(&.z).to be_within(tolerance).of(33.0)
        end
      end
    end

    context "with two vectors and a target" do
      it "adds the vectors" do
        v3 = described_class.new
        described_class.add(v1, v2, v3)
        aggregate_failures "coordinates" do
          expect(v3.x).to be_within(tolerance).of(11.0)
          expect(v3.y).to be_within(tolerance).of(22.0)
          expect(v3.z).to be_within(tolerance).of(33.0)
        end
      end

      it "returns the target" do
        v3 = described_class.new
        returned = described_class.add(v1, v2, v3)
        expect(returned).to be(v3)
      end
    end

    context "with two vectors and a nil target" do
      it "adds the vectors" do
        v3 = described_class.add(v1, v2, nil)
        aggregate_failures "coordinates" do
          expect(v3.x).to be_within(tolerance).of(11.0)
          expect(v3.y).to be_within(tolerance).of(22.0)
          expect(v3.z).to be_within(tolerance).of(33.0)
        end
      end
    end
  end

  describe "#+" do
    let(v1) { described_class.new(1.0, 2.0, 3.0) }
    let(v2) { described_class.new(10.0, 20.0, 30.0) }

    context "with two vectors" do
      subject { v1 + v2 }

      it "adds the vectors" do
        aggregate_failures "coordinates" do
          expect(&.x).to be_within(tolerance).of(11.0)
          expect(&.y).to be_within(tolerance).of(22.0)
          expect(&.z).to be_within(tolerance).of(33.0)
        end
      end
    end
  end

  describe "#sub" do
    context "with another vector" do
      let(other) { described_class.new(10.0, 20.0, 30.0) }

      it "subtracts from the vector" do
        vector.sub(other)
        aggregate_failures "coordinates" do
          expect(vector.x).to be_within(tolerance).of(2.3)
          expect(vector.y).to be_within(tolerance).of(25.6)
          expect(vector.z).to be_within(tolerance).of(48.9)
        end
      end

      it "returns the vector" do
        returned = vector.sub(other)
        expect(returned).to be(vector)
      end
    end

    context "with two coordinates" do
      it "subtracts from the vector" do
        vector.sub(10.0, 20.0)
        aggregate_failures "coordinates" do
          expect(vector.x).to be_within(tolerance).of(2.3)
          expect(vector.y).to be_within(tolerance).of(25.6)
          expect(vector.z).to be_within(tolerance).of(78.9)
        end
      end

      it "returns the vector" do
        returned = vector.sub(10.0, 20.0)
        expect(returned).to be(vector)
      end
    end

    context "with three coordinates" do
      it "subtracts from the vector" do
        vector.sub(10.0, 20.0, 30.0)
        aggregate_failures "coordinates" do
          expect(vector.x).to be_within(tolerance).of(2.3)
          expect(vector.y).to be_within(tolerance).of(25.6)
          expect(vector.z).to be_within(tolerance).of(48.9)
        end
      end

      it "returns the vector" do
        returned = vector.sub(10.0, 20.0, 30.0)
        expect(returned).to be(vector)
      end
    end
  end

  describe ".sub" do
    let(v1) { described_class.new(10.0, 20.0, 30.0) }
    let(v2) { described_class.new(1.0, 2.0, 3.0) }

    context "with two vectors" do
      subject { described_class.sub(v1, v2) }

      it "subtracts the vectors" do
        aggregate_failures "coordinates" do
          expect(&.x).to be_within(tolerance).of(9.0)
          expect(&.y).to be_within(tolerance).of(18.0)
          expect(&.z).to be_within(tolerance).of(27.0)
        end
      end
    end

    context "with two vectors and a target" do
      it "subtracts the vectors" do
        v3 = described_class.new
        described_class.sub(v1, v2, v3)
        aggregate_failures "coordinates" do
          expect(v3.x).to be_within(tolerance).of(9.0)
          expect(v3.y).to be_within(tolerance).of(18.0)
          expect(v3.z).to be_within(tolerance).of(27.0)
        end
      end

      it "returns the target" do
        v3 = described_class.new
        returned = described_class.sub(v1, v2, v3)
        expect(returned).to be(v3)
      end
    end

    context "with two vectors and a nil target" do
      it "subtracts the vectors" do
        v3 = described_class.sub(v1, v2, nil)
        aggregate_failures "coordinates" do
          expect(v3.x).to be_within(tolerance).of(9.0)
          expect(v3.y).to be_within(tolerance).of(18.0)
          expect(v3.z).to be_within(tolerance).of(27.0)
        end
      end
    end
  end

  describe "#-" do
    let(v1) { described_class.new(10.0, 20.0, 30.0) }
    let(v2) { described_class.new(1.0, 2.0, 3.0) }

    context "with two vectors" do
      subject { v1 - v2 }

      it "subtracts the vectors" do
        aggregate_failures "coordinates" do
          expect(&.x).to be_within(tolerance).of(9.0)
          expect(&.y).to be_within(tolerance).of(18.0)
          expect(&.z).to be_within(tolerance).of(27.0)
        end
      end
    end
  end

  describe "#mult" do
    it "scales the vector" do
      vector.mult(3.5)
      aggregate_failures "coordinates" do
        expect(vector.x).to be_within(tolerance).of(43.05)
        expect(vector.y).to be_within(tolerance).of(159.6)
        expect(vector.z).to be_within(tolerance).of(276.15)
      end
    end

    it "returns the vector" do
      returned = vector.mult(2.0)
      expect(returned).to be(vector)
    end
  end

  describe ".mult" do
    it "scales the vector" do
      target = described_class.new
      described_class.mult(vector, 3.5, target)
      aggregate_failures "coordinates" do
        expect(target.x).to be_within(tolerance).of(43.05)
        expect(target.y).to be_within(tolerance).of(159.6)
        expect(target.z).to be_within(tolerance).of(276.15)
      end
    end

    it "returns the target" do
      target = described_class.new
      returned = described_class.mult(vector, 2.0, target)
      expect(returned).to be(target)
    end

    context "with a nil target" do
      it "scales the vector" do
        returned = described_class.mult(vector, 3.5, nil)
        aggregate_failures "coordinates" do
          expect(returned.x).to be_within(tolerance).of(43.05)
          expect(returned.y).to be_within(tolerance).of(159.6)
          expect(returned.z).to be_within(tolerance).of(276.15)
        end
      end
    end

    context "with no target" do
      it "scales the vector" do
        returned = described_class.mult(vector, 3.5)
        aggregate_failures "coordinates" do
          expect(returned.x).to be_within(tolerance).of(43.05)
          expect(returned.y).to be_within(tolerance).of(159.6)
          expect(returned.z).to be_within(tolerance).of(276.15)
        end
      end
    end
  end

  describe "#*" do
    subject { vector * 3.5 }

    it "subtracts the vectors" do
      aggregate_failures "coordinates" do
        expect(&.x).to be_within(tolerance).of(43.05)
        expect(&.y).to be_within(tolerance).of(159.6)
        expect(&.z).to be_within(tolerance).of(276.15)
      end
    end
  end

  describe "#div" do
    it "scales the vector" do
      vector.div(3.5)
      aggregate_failures "coordinates" do
        expect(vector.x).to be_within(tolerance).of(3.514285714)
        expect(vector.y).to be_within(tolerance).of(13.028571429)
        expect(vector.z).to be_within(tolerance).of(22.542857143)
      end
    end

    it "returns the vector" do
      returned = vector.div(2.0)
      expect(returned).to be(vector)
    end
  end

  describe ".div" do
    it "scales the vector" do
      target = described_class.new
      described_class.div(vector, 3.5, target)
      aggregate_failures "coordinates" do
        expect(target.x).to be_within(tolerance).of(3.514285714)
        expect(target.y).to be_within(tolerance).of(13.028571429)
        expect(target.z).to be_within(tolerance).of(22.542857143)
      end
    end

    it "returns the target" do
      target = described_class.new
      returned = described_class.div(vector, 2.0, target)
      expect(returned).to be(target)
    end

    context "with a nil target" do
      it "scales the vector" do
        returned = described_class.div(vector, 3.5, nil)
        aggregate_failures "coordinates" do
          expect(returned.x).to be_within(tolerance).of(3.514285714)
          expect(returned.y).to be_within(tolerance).of(13.028571429)
          expect(returned.z).to be_within(tolerance).of(22.542857143)
        end
      end
    end

    context "with no target" do
      it "scales the vector" do
        returned = described_class.div(vector, 3.5)
        aggregate_failures "coordinates" do
          expect(returned.x).to be_within(tolerance).of(3.514285714)
          expect(returned.y).to be_within(tolerance).of(13.028571429)
          expect(returned.z).to be_within(tolerance).of(22.542857143)
        end
      end
    end
  end

  describe "#/" do
    subject { vector / 3.5 }

    it "subtracts the vectors" do
      aggregate_failures "coordinates" do
        expect(&.x).to be_within(tolerance).of(3.514285714)
        expect(&.y).to be_within(tolerance).of(13.028571429)
        expect(&.z).to be_within(tolerance).of(22.542857143)
      end
    end
  end

  describe "#dist" do
    let(other) { described_class.new(4.0, 5.0, 6.0) }
    subject { vector.dist(other) }

    it "computes the distance between vectors" do
      is_expected.to be_within(tolerance).of(83.854996)
    end
  end

  describe ".dist" do
    let(v1) { described_class.new(1.2, 3.4, 5.6) }
    let(v2) { described_class.new(7.8, 9.0, 4.2) }
    subject { described_class.dist(v1, v2) }

    it "computes the distance between vectors" do
      is_expected.to be_within(tolerance).of(8.768124087)
    end
  end

  describe "#dot" do
    context "with another vector" do
      let(other) { described_class.new(4.0, 5.0, 6.0) }
      subject { vector.dot(other) }

      it "computes the dot product" do
        is_expected.to be_within(tolerance).of(750.6)
      end
    end

    context "with coordinates" do
      subject { vector.dot(4.0, 5.0, 6.0) }

      it "computes the dot product" do
        is_expected.to be_within(tolerance).of(750.6)
      end
    end
  end

  describe ".dot" do
    let(v1) { described_class.new(1.2, 3.4, 5.6) }
    let(v2) { described_class.new(7.8, 9.0, 4.2) }
    subject { described_class.dot(v1, v2) }

    it "computes the dot product" do
      is_expected.to be_within(tolerance).of(63.48)
    end
  end

  describe "#cross" do
    let(other) { described_class.new(55.5, 42.0, 77.7) }

    context "with a target" do
      let(target) { described_class.new }
      subject { vector.cross(other, target) }

      it "computes the cross product" do
        aggregate_failures "coordinates" do
          # Precision on these is really bad.
          expect(&.x).to be_within(0.001).of(229.32)
          expect(&.y).to be_within(0.001).of(3423.24)
          expect(&.z).to be_within(0.001).of(-2014.2)
        end
      end

      it "returns the target" do
        is_expected.to be(target)
      end
    end

    context "without a target" do
      subject { vector.cross(other, nil) }

      it "computes the cross product" do
        aggregate_failures "coordinates" do
          # Precision on these is really bad.
          expect(&.x).to be_within(0.001).of(229.32)
          expect(&.y).to be_within(0.001).of(3423.24)
          expect(&.z).to be_within(0.001).of(-2014.2)
        end
      end

      it "returns a new instance" do
        is_expected.to_not be(vector)
      end
    end
  end

  describe ".cross" do
    let(v1) { described_class.new(1.1, 2.2, 3.3) }
    let(v2) { described_class.new(55.5, 42.0, 77.7) }

    context "with a target" do
      let(target) { described_class.new }
      subject { described_class.cross(v1, v2, target) }

      it "computes the cross product" do
        aggregate_failures "coordinates" do
          # Precision on these is really bad.
          expect(&.x).to be_within(0.001).of(32.34)
          expect(&.y).to be_within(0.001).of(97.68)
          expect(&.z).to be_within(0.001).of(-75.9)
        end
      end

      it "returns the target" do
        is_expected.to be(target)
      end
    end

    context "without a target" do
      subject { described_class.cross(v1, v2, nil) }

      it "computes the cross product" do
        aggregate_failures "coordinates" do
          # Precision on these is really bad.
          expect(&.x).to be_within(0.001).of(32.34)
          expect(&.y).to be_within(0.001).of(97.68)
          expect(&.z).to be_within(0.001).of(-75.9)
        end
      end
    end
  end
end
