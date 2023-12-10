require "test_helper"

class EventTest < ActiveSupport::TestCase
  test "valid event" do
    user = User.create!(email: "john@doe.com", password: "pass123456")
    event = Event.new(name: "Twitter Meetup",
                      description: "Meeting all of my Twitter folks",
                      date: "2023-12-25 20:00:00",
                      location: "Los Angeles, CA",
                      user: user)
    assert event.valid?
  end

  test "invalid event missing user" do
    event = Event.new(name: "Twitter Meetup",
                      description: "Meeting all of my Twitter folks",
                      date: "2023-12-25 20:00:00",
                      location: "Los Angeles, CA")
    assert_not event.valid?
  end

  test "valid attendance of event" do
    user = User.create!(email: "john@doe.com", password: "pass123456")
    event = Event.create!(name: "Twitter Meetup",
                          description: "Meeting all of my Twitter folks",
                          date: "2023-12-25 20:00:00",
                          location: "Los Angeles, CA",
                          user: user)
    attendance = Attendance.new(event: event, user: user)
    assert attendance.valid?
  end

  test "invalid attendance of event missing user" do
    user = User.create!(email: "john@doe.com", password: "pass123456")
    event = Event.create!(name: "Twitter Meetup",
                          description: "Meeting all of my Twitter folks",
                          date: "2023-12-25 20:00:00",
                          location: "Los Angeles, CA",
                          user: user)
    attendance = Attendance.new(event: event)
    assert_not attendance.valid?
  end

  test "invalid attendance missing event and missing user" do
    attendance = Attendance.new
    assert_not attendance.valid?
  end

  test "valid cancellation of attendance" do
    user = User.create!(email: "john@doe.com", password: "pass123456")
    event = Event.create!(name: "Twitter Meetup",
                          description: "Meeting all of my Twitter folks",
                          date: "2023-12-25 20:00:00",
                          location: "Los Angeles, CA",
                          user: user)
    attendance = Attendance.create!(event: event, user: user)
    attendance.destroy!
    assert attendance.valid?
  end
end
