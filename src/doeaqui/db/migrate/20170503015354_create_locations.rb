class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :city
      t.string :district
      t.string :street
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
