class LienCities < ActiveRecord::Migration[5.2]
  def change
    #je fais le liens entre ma table city et mes table docteurs, patient et appointment
  	    add_reference :doctors, :city, foreign_key: true
    	add_reference :patients, :city, foreign_key: true
    	add_reference :appointments, :city, foreign_key: true
  end
end
