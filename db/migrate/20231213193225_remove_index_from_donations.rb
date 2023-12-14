class RemoveIndexFromDonations < ActiveRecord::Migration[7.1]
  def change
    remove_index :donations, :user_id
    remove_index :donations, :vet_id
  end
end
