class ChangeStartTimeToBeTimeInTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :start_time, :time
  end
end
