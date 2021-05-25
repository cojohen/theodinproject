class NotificationsController < ApplicationController
  def index
    @notifications = current_user.notifications
  end

  def update
    @notification = Notification.find(params[:id])

    if @notifcation.mark_as_read!
      redirect_to @notification.url
    else
      render :index
    end
  end
end
