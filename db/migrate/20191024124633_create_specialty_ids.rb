class CreateSpecialtyIds < ActiveRecord::Migration[5.2]
  def change
    #je crée ma table intermédiaire pour faire le lien entre docteur et spécialité
    create_table :specialty_ids do |t|

      t.timestamps
    end
  end
end
