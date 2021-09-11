require "../spec_helper"

Spectator.describe Processing::PVector do
  subject(vector) { described_class.new(12.3, 45.6, 78.9) }
  let(tolerance) { Float32::EPSILON * 10 }

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
end
