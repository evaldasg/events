require "spec_helper"

describe "Viewing the list of events" do
  it "shows the event" do
    event1 = Event.create(name: "Learn some Ruby",
                          location: "Vilnius",
                          price: 0.00,
                          description: "A fun and interactive introduction to Ruby event in Vilnius with a lot of great people to support your road to the Olympia",
                          starts_at: 10.days.from_now)

    event2 = Event.create(name: "Ruby meet",
                          location: "Riga",
                          price: 10.00,
                          description: "The party after great introduction to the Ruby in Riga",
                          starts_at: 15.days.from_now)

    event3 = Event.create(name: "Create Rails App",
                          location: "Kaunas",
                          price: 25.00,
                          description: "We are going to write our first Rails app which will be greatest in the World",
                          starts_at: 20.days.from_now)

    event4 = Event.create(name: "Deploy Rails App",
                          location: "Berlin",
                          price: 100.00,
                          description: "We'll deployng our greatest App in the World to the World on Web",
                          starts_at: 20.days.from_now)

    event5 = Event.create(name: "Rails Crazy Dazzy",
                          location: "Vilnius",
                          price: 50.00,
                          description: "There will be fun party for Rails team and developers in Vilnius all day and night.",
                          starts_at: 25.days.from_now)

    visit events_url

    expect(page).to have_text("5 Events")
    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).to have_text(event3.name)
    expect(page).to have_text(event4.name)
    expect(page).to have_text(event5.name)

    expect(page).to have_text(event1.location)
    expect(page).to have_text(event2.description[0..10])
    expect(page).to have_text(event3.starts_at)
    expect(page).to have_text("50 LT")
  end

  it "shows the upcoming evetns list" do
    event1 = Event.create(name: "Learn some Ruby",
                          location: "Vilnius",
                          price: 0.00,
                          description: "A fun and interactive introduction to Ruby event in Vilnius with a lot of great people to support your road to the Olympia",
                          starts_at: 10.days.from_now)

    event2 = Event.create(name: "Ruby meet",
                          location: "Riga",
                          price: 10.00,
                          description: "The party after great introduction to the Ruby in Riga",
                          starts_at: 15.days.from_now)

    event3 = Event.create(name: "Create Rails App",
                          location: "Kaunas",
                          price: 25.00,
                          description: "We are going to write our first Rails app which will be greatest in the World",
                          starts_at: 20.days.ago)


    visit events_path

    expect(page).to have_text(event1.name)
    expect(page).to have_text(event2.name)
    expect(page).not_to have_text(event3.name)
  end
end
