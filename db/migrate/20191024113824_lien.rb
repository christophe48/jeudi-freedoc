class Lien < ActiveRecord::Migration[5.2]
  def change
    #je fais les liens entre Docteur et patient par l'intémédiaire d'appointment
  	add_reference :appointments, :doctor, foreign_key: true
  	add_reference :appointments, :patient, foreign_key: true
  end
end
