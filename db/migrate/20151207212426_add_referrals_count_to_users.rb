class AddReferralsCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :referrals_count, :integer, :default => 0
  end
end
