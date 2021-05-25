class AddUrlAndMessageToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :url, :string
    add_column :notifications, :message, :text
  end
end
