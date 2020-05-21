class RenameRestaurantPhoneNumberToPhone < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phone_number, :phone
  end
end
