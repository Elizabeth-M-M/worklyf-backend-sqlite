class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.integer :group_id
      t.integer :user_id
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :status
      t.string :label
      t.boolean :reminder
      t.string :description

      t.timestamps
    end
  end
end
