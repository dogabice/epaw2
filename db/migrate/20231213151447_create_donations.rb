class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.datetime :donation_date
      t.integer :donation_amount

      t.timestamps
    end
  end
end
