require 'spec_helper'

describe "Editing an event" do

  it "updates the event and shows the event's updated details" do
    event = Event.create(event_attributes(price: 20.00))

    visit event_url(event)

    click_link 'Edit'

    expect(current_path).to eq(edit_event_path(event))

    expect(find_field('Name').value).to eq(event.name)
    expect(find_field('Description').value).to eq(event.description)
    expect(find_field('Location').value).to eq(event.location)
    expect(find_field('Price').value).to eq("20")
    # expect(find_field('Starts at').value).to eq(event.starts_at)
  end

end
