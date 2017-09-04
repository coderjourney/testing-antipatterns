require "spec_helper"

class Worker
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def full_title
    "#{name} #{title}"
  end

  def title
    raise "Must set a worker's title in subclass"
  end
end

RSpec.describe "Overstubbing" do
  it "stubs itself" do
    worker = Worker.new("Kevin Bacon")
    allow(worker).to receive(:title).and_return("PhD.")

    expect(worker.full_title).to eql("Kevin Bacon PhD.")
  end
end
