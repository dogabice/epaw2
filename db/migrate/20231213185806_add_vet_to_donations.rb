class AddVetToDonations < ActiveRecord::Migration[7.1]
  def change
    add_column :donations, :vet_id, :integer
    add_index :donations, :vet_id
  end
end
