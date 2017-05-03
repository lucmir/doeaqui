class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.text :description
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
