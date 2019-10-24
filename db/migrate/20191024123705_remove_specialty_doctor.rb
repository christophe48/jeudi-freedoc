class RemoveSpecialtyDoctor < ActiveRecord::Migration[5.2]
  def change
    #je supprime la collone spécialty dans le doctors
  	remove_column :doctors, :specialty, :string
  end
end
