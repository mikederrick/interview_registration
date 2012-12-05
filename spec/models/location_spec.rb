require 'spec_helper'

describe Location do
  context 'validation' do
    it { should validate_presence_of :conference_room }
  end
end