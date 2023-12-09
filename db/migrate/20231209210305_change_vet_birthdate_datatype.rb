class ChangeVetBirthdateDatatype < ActiveRecord::Migration[7.1]
  def change
    change_column(:vets, :birth_date, :date)
end
end
