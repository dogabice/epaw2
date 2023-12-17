class AddFieldsToVets < ActiveRecord::Migration[7.1]
  def change
    add_column :vets, :first_name, :string
    add_column :vets, :last_name, :string
    add_column :vets, :phone, :string
    add_column :vets, :address, :string
    add_column :vets, :birth_date, :string
  end
end
