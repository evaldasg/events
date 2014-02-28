require 'spec_helper'

describe "Creating a new movie" do

  it "saves the movie and shows the new movie's details" do
    visit events_url

    click_link  'Add New Event'

    expect(current_path).to eq(new_event_path)

    fill_in "Name", with: "New Event Name"
    fill_in "Description", with: "New super and fun event."
    fill_in "Location", with: "Vilnius"
    fill_in "Price", with: "70"
    # select (Time.now.day + 30).to_s, :from => "event_starts_at_30d"

    click_button 'Create Event'

    expect(current_path).to eq(event_path(Event.last))

    expect(page).to have_text("New Event Name")
  end
end
