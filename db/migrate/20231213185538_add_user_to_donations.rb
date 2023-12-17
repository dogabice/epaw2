class AddUserToDonations < ActiveRecord::Migration[7.1]
  def change
    add_column :donations, :user_id, :integer
    add_index :donations, :user_id
  end
end
