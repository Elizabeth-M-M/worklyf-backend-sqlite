class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :gender
      t.string :age
      t.string :occupation
      t.string :full_name
      t.integer :user_id

      t.timestamps
    end
  end
end
