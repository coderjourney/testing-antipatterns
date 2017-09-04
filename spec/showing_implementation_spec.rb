require "spec_helper"

class AreaExample
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    length * width
  end

  def length
    1
  end
end

RSpec.describe "Showing Implementation" do
  it "might still be wrong" do
    ex = AreaExample.new(5, 6)
    expect(ex.area).to eql(ex.length * ex.width)
  end
end
