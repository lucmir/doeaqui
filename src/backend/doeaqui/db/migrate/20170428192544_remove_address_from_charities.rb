class RemoveAddressFromCharities < ActiveRecord::Migration[5.0]
  def change
    remove_column :charities, :address, :string
  end
end
