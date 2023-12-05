class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.date :pet_birthdate
      t.string :animal_species
      t.string :pet_kind
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
