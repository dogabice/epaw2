class ChangeColumnNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:pets, :pet_name, false)
    change_column_null(:pets, :animal_species, false)
    change_column_null(:pets, :pet_kind, false)
  end
end
