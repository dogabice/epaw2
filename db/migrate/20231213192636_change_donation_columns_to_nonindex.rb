class ChangeDonationColumnsToNonindex < ActiveRecord::Migration[7.1]
  def change
    change_column :donations, :user_id, :integer, index: false, null: true
    change_column :donations, :vet_id, :integer, index: false, null: true
  end
end
