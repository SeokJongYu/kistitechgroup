class CreateAttendanceLists < ActiveRecord::Migration
  def change
    create_table :attendance_lists do |t|
      t.integer :talk_id
      t.integer :user_id

      t.timestamps
    end
    add_index :attendance_lists, :talk_id
    add_index :attendance_lists, :user_id
    add_index :attendance_lists, [:talk_id, :user_id], unique: true
    
  end
end
