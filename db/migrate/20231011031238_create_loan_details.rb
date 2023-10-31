class CreateLoanDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_details do |t|
      t.integer :key_master_id
      t.datetime :start_date
      t.datetime :return_date
      t.integer :grade
      t.integer :class_number
      t.string :user_name

      t.timestamps
    end
  end
end
