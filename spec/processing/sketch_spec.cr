require "../spec_helper"

Spectator.describe Processing::Sketch do
  class TestSketch < Processing::Sketch
  end

  subject { TestSketch.new }

  describe "#initialize" do
    it "must initialize #surface" do
      expect(subject.surface).to_not be(nil)
      expect(subject.surface).to be_kind_of(Processing::Surface)
    end

    it "must initialize #style" do
      expect(subject.style).to_not be(nil)
      expect(subject.style).to be_kind_of(Processing::Style)
    end
  end

  describe "#redraw" do
    it "must increment #frame_count by 1" do
      prev_frame_count = subject.frame_count

      subject.redraw

      expect(subject.frame_count).to eq(prev_frame_count + 1)
    end
  end

  describe "#loop" do
    before_each { subject.loop }

    it "must turn on looping" do
      subject.loop

      expect(subject.loop?).to be(true)
    end
  end

  describe "#no_loop" do
    before_each do
      subject.loop
      subject.no_loop
    end

    it "must turn off looping" do
      expect(subject.loop?).to be(false)
    end
  end

  describe "#style" do
    it "must always return the current style" do
      expect(subject.style).to_not be(nil)
      expect(subject.style).to be_kind_of(Processing::Style)
    end
  end

  describe "#push_style" do
    before_each do
      subject.background(255,0,0)
      subject.fill(0,255,0)
      subject.stroke(0,0,255)

      subject.push_style
    end

    it "must initialize a new blank #style" do
      expect(subject.style.background_color).to be(nil)
      expect(subject.style.fill_color).to be(nil)
      expect(subject.style.stroke_color).to be(nil)
    end
  end

  describe "#pop_style" do
    before_each do
      subject.background(255,0,0)
      subject.fill(0,255,0)
      subject.stroke(0,0,255)

      subject.push_style
      subject.pop_style
    end

    it "must reset #style" do
      expect(subject.style.background_color).to_not be(nil)
      expect(subject.style.background_color.not_nil!.r).to eq(255)
      expect(subject.style.background_color.not_nil!.g).to eq(0)
      expect(subject.style.background_color.not_nil!.b).to eq(0)

      expect(subject.style.fill_color).to_not be(nil)
      expect(subject.style.fill_color.not_nil!.r).to eq(0)
      expect(subject.style.fill_color.not_nil!.g).to eq(255)
      expect(subject.style.fill_color.not_nil!.b).to eq(0)

      expect(subject.style.stroke_color).to_not be(nil)
      expect(subject.style.stroke_color.not_nil!.r).to eq(0)
      expect(subject.style.stroke_color.not_nil!.g).to eq(0)
      expect(subject.style.stroke_color.not_nil!.b).to eq(255)
    end
  end
end
