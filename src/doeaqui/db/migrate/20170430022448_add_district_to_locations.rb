class AddDistrictToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :district, :string
  end
end
