class CreateLaptops < ActiveRecord::Migration[6.1]
  def change
    create_table :laptops, id: :uuid do |t|
      t.string :model
      t.string :serial_number

      t.timestamps
    end
  end
end
