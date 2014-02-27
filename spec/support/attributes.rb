def event_attributes(overrides = {})
  {
  name: "Learn some Ruby",
  location: "Vilnius",
  price: 10.00,
  description: "A fun and interactive introduction to Ruby event in Vilnius with a lot of great people to support your road to the Olympia",
  starts_at: "12.days.from_now"
  }.merge(overrides)
end
