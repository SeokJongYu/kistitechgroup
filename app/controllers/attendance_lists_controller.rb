class AttendanceListsController < ApplicationController

  def create
    @talk = Talk.find(params[:talk_id])
    @attend = @talk.attendance_lists.build(user_id: current_user.id)

    respond_to do |format|
      if @attend.save
       format.html { redirect_to @talk,
       notice: 'Your attendance has been confirmed.' }
       format.json { render json: @attend,
       status: :created, location: @attend }
      end
    end
  end

  def destroy
    respond_to do |format|
      format.html { redirect_to @talk }
      format.js
    end
  end
end
