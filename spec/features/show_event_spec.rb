require 'spec_helper'

describe "Viewing an individual event" do

  it "shows the event's details" do
    event = Event.create(name: "Learn some Ruby",
                          location: "Vilnius",
                          price: 10.00,
                          description: "A fun and interactive introduction to Ruby event in Vilnius with a lot of great people to support your road to the Olympia",
                          starts_at: "10.days.from_now")
    visit event_url(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.location)
    expect(page).to have_text("$10.00")
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.starts_at)
  end

end
