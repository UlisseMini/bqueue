require "./spec_helper"

describe BQueue do
  # TODO: Write tests

  it "removes items when max size is reached" do
    bq = BQueue::BQueue(Int32).new(2)

    bq.push 1, 2, 3

    bq.pop.should eq 3
    bq.pop.should eq 2

    expect_raises(IndexError) { bq.pop }
  end

  it "joins strings" do
    bq = BQueue::BQueue(String).new(3)
    bq.push "foo"
    bq.push "bar"

    bq.join("\n").should eq "foo\nbar"
  end
end
