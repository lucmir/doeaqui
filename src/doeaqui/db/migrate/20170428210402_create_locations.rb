class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :city
      t.text :street
      t.string :number
      t.string :complement

      t.timestamps
    end
  end
end
