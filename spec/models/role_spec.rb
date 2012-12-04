require 'spec_helper'

describe "Role" do
  role = Role.new(:name => "QA")

  it "should save successfully" do
  	role.save.should be_true
  end

  it "should have the correct name attribute" do
  	role.name.should eql("QA")
  end
end