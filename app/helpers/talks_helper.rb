module TalksHelper
  
  def attendee?(talk)
    talk.check_user(current_user).nil?
  end
  
end
