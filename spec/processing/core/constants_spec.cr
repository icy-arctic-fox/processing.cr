require "../../spec_helper"

Spectator.describe Processing::Core::Constants do
  describe "PI" do
    subject { Processing::Core::Constants::PI }
    it { is_expected.to eq(::Math::PI) }
  end

  describe "HALF_PI" do
    subject { Processing::Core::Constants::HALF_PI }
    it { is_expected.to eq(::Math::PI / 2) }
  end

  describe "QUARTER_PI" do
    subject { Processing::Core::Constants::QUARTER_PI }
    it { is_expected.to eq(::Math::PI / 4) }
  end

  describe "TAU" do
    subject { Processing::Core::Constants::TAU }
    it { is_expected.to eq(::Math::TAU) }
  end

  describe "TWO_PI" do
    subject { Processing::Core::Constants::TWO_PI }
    it { is_expected.to eq(::Math::PI * 2) }
  end
end
