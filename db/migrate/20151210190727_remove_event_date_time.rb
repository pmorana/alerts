class RemoveEventDateTime < ActiveRecord::Migration
  def change
  	remove_column :events, :event_date_time, :datetime
  end
end
