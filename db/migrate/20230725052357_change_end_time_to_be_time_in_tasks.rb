class ChangeEndTimeToBeTimeInTasks < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :end_time, :time
  end
end
