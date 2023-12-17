class CreateHealthRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :health_records do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :vet, null: false, foreign_key: true
      t.text :health_treatments
      t.text :health_notes

      t.timestamps
    end
  end
end
