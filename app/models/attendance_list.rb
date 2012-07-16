class AttendanceList < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :talk
  belongs_to :user
  
  validates :talk_id, presence: true
  validates :user_id, presence: true
end
