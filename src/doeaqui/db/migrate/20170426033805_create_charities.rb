class CreateCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
