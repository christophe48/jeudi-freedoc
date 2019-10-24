class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    #je crée ma table appointments
    create_table :appointments do |t|
    	t.datetime :date
    end
  end
end
