require 'spec_helper'

describe Interview do
  context "validation" do
  	it {should validate_presence_of :time}
  	it {should validate_presence_of :location}
  	it {should validate_presence_of :role}
  end

  context "scheduling an interview" do
    role = Role.create(:name => "QA")
    interviewee = Interviewee.create(:first_name => "Bruce",:last_name => "Wayne", :email => "batman@yahoo.com", :phone => "7245555555")
    interview = Interview.create!(role: role, location: Location.create!(conference_room: "Kennywood"), time: DateTime.new)
  	interview = Interview.schedule_an_interview(interviewee, role)

    context "first available interview time is in the past" do
      old_time = DateTime.new(2001, 2, 3)
      new_time = DateTime.new + 1.day
      new_interview = Interview.create!(role: role, location: Location.create!(conference_room: "Kennywood"), time: new_time)
      old_interview = Interview.create!(role: role, location: Location.create!(conference_room: "Kennywood"), time: old_time)
      new_interview_id = new_interview.id

    	it "should pick a valid interview time" do
        Interview.schedule_an_interview(interviewee, role)
        Interview.find(new_interview_id).interviewee.should eql(interviewee)
    	end
    end
  end
end