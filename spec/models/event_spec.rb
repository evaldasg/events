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

  it "is upcoming when the starts at date is in the future" do
    event = Event.create(event_attributes(starts_at: 15.days.from_now))

    expect(Event.upcoming).to include(event)
  end

  it "is not upcoming when the starts at date is in the past" do
    event = Event.create(event_attributes(starts_at: 15.days.ago))

    expect(Event.upcoming).not_to include(event)
  end

  it "returns upcoming events ordered with the most recently-starting event first" do
    event1 = Event.create(event_attributes(starts_at: 5.days.from_now))
    event2 = Event.create(event_attributes(starts_at: 10.days.from_now))
    event3 = Event.create(event_attributes(starts_at: 15.days.from_now))

    expect(Event.upcoming).to eq([event1, event2, event3])
  end
end
