class AddAvatarToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :avatar, :string
  end
end
