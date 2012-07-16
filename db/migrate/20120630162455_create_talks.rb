class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :name
      t.string :title
      t.string :desc
      t.string :url
      t.date :meetingdate

      t.timestamps
    end
  end
end
