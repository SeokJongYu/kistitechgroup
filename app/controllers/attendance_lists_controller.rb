class AttendanceListsController < ApplicationController

  def create
    #@user = current_user
    @talk = Talk.find(params[:talk_id])
    @attend = @talk.attendance_lists.build(user_id: current_user)

    respond_to do |format|
      if @attend.save
       format.html { redirect_to @talk,
       notice: 'Line item was successfully created.' }
       format.json { render json: @attend,
       status: :created, location: @attend }
      end
    end
  end

  def destroy

    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
