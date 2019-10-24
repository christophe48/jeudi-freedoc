class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    #je créer la table spécialité
    create_table :specialties do |t|
      t.string :name

    end
  end
end
