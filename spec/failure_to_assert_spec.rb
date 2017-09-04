require "spec_helper"

RSpec.describe "Failing to assert" do
  it "passes if we never assert" do
    1 == 2
  end
end
