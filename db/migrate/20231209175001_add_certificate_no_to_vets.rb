class AddCertificateNoToVets < ActiveRecord::Migration[7.1]
  def change
    add_column :vets, :certificate_no, :string
  end
end
