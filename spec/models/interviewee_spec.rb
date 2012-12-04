require 'spec_helper'

describe "Interviewee" do
  interviewee = Interviewee.new(:first_name => "Bruce", :last_name => "Wayne", :email => "batman@yahoo.com", :phone => "7245555555")

  it "should save successfully" do
  	interviewee.save.should be_true
  end

  it "should have a first name attribute" do
  	interviewee.first_name.should eql("Bruce")
  end

  it "should have a last name attribute" do
  	interviewee.last_name.should eql("Wayne")
  end

  it "should have a email attribute" do
  	interviewee.email.should eql("batman@yahoo.com")
  end

  it "should have a phone attribute" do
  	interviewee.phone.should eql("7245555555")
  end
end