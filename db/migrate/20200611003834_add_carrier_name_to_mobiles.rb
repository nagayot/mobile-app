class AddCarrierNameToMobiles < ActiveRecord::Migration[5.2]
  def change
    add_column :mobiles, :carrier_name, :string
  end
end
