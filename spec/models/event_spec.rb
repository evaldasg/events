require 'spec_helper'

describe "An event" do
  it "is free if the price is 0 LT" do
    event = Event.create(price: 0)

    expect(event.free?).to eq(true)
  end

  it "is not free if the price is non-0 LT" do
    event = Event.create(price: 10.00)

    expect(event.free?).to eq(false)
  end

  it "is free if the price is blank" do
    event = Event.create(price: nil)

    expect(event.free?).to eq(true)
  end
end
