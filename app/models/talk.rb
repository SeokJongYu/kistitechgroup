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
end
