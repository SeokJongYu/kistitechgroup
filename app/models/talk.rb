# == Schema Information
#
# Table name: talks
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  title       :string(255)
#  desc        :string(255)
#  url         :string(255)
#  meetingdate :date
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Talk < ActiveRecord::Base
  attr_accessible :desc, :meetingdate, :name, :title, :url
  has_many :attendance_lists, foreign_key: "talk_id", dependent: :destroy


  def check_user(user)
    attendance_lists.find_by_user_id(user.id)
  end

  def attend!(user)
    attendance_lists.create!(user_id: user.id)
  end

  def unattend!(user)
    attendance_lists.find_by_user_id(user.id).destroy
  end
  
end
