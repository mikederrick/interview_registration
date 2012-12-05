class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.references :interviewee
      t.references :role
      t.references :location
      t.timestamp :time

      t.timestamps
    end
    add_index :interviews, :interviewee_id
    add_index :interviews, :role_id
    add_index :interviews, :location_id
  end
end
