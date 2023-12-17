class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.references :vet, null: false, foreign_key: true
      t.datetime :date
      t.text :description

      t.timestamps
    end
  end
end
