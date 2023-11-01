class CreateKeyMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :key_masters do |t|
      t.string :room_name
      t.string :management_room

      t.timestamps
    end
  end
end
