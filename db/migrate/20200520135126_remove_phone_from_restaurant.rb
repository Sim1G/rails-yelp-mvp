class RemovePhoneFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :phone, :integer
  end
end
