class Interview < ActiveRecord::Base
  belongs_to :interviewee
  belongs_to :role
  belongs_to :location
  attr_accessible :time, :interviewee, :role, :location, :interviewee_id
  
  validates :time, presence: true
  validates :location, presence: true
  validates :role, presence: true

  ROLES = ['QA', 'Software Engineer', 'Business Systems Analyst', 'Product Manager', 'Designer']

  def self.schedule_an_interview(interviewee, role)
    # puts "#{Interview.where('interviewee_id IS NULL AND role_id = 14 AND time > 2012-12-04 16:44:12').inspect}"
    puts "#{Interview.where(['time IS NOT NULL']).inspect}"
    # puts "#{Interview.where('interviewee_id IS NULL').third.inspect}"
    # puts "#{Interview.where('interviewee_id IS NULL').fourth.inspect}"
  	Interview.where("interviewee_id IS NULL AND role_id = ? AND time > ?", role.id, Time.now).first.update_attributes(:interviewee_id => interviewee.id)
  end
end
