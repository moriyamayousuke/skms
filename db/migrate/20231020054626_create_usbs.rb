class CreateUsbs < ActiveRecord::Migration[6.1]
  def change
    create_table :usbs do |t|
      t.integer :grade
      t.integer :class_number
      t.string :user_name
      t.datetime :start_date

      t.timestamps
    end
  end
end
