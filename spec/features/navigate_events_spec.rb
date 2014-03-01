require 'spec_helper'

describe "Navigation events" do

  it "allows navigation from the detail page to the listing page" do
    event = Event.create(event_attributes)

    visit event_url(event)

    click_link "All Events"

    expect(current_path).to eq(events_path)

  end

  it "allows navigation from the listing page to the detail page" do
    event = Event.create(event_attributes(starts_at: 15.days.from_now))

    visit events_url

    click_link event.name

    expect(current_path).to eq(event_path(event))
  end

end
