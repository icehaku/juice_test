require "rails_helper"

RSpec.describe Search, type: :model do
  describe "Should Respond" do
    it { should respond_to :term }
    it { should respond_to :submitted }
  end

  describe "Callbacks" do
    it { is_expected.to callback(:downcase_and_strip).before(:save) }
  end

  describe "Methods" do
  end

  describe "Factory" do
    it { expect(build :search).to be_a Search }
    it { expect(build :search).to be_valid }
  end
end
