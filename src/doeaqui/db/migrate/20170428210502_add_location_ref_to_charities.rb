class AddLocationRefToCharities < ActiveRecord::Migration[5.0]
  def change
    add_reference :charities, :location, foreign_key: true
  end
end
