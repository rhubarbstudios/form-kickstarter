class AddLocationDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location_details, :string
  end
end
