require "./spec_helper"

describe BQueue do
  # TODO: Write tests

  it "Removes items when max size is reached" do
    bq = BQueue::BQueue(Int32).new(2)

    bq.push 1
    bq.push 2
    bq.push 3

    bq.pop.should eq 3
    bq.pop.should eq 2

    expect_raises(IndexError) { bq.pop }
  end
end
