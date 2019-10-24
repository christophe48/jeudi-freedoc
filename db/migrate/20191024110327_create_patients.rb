class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    #je créé ma table patient
    create_table :patients do |t|
    	t.string :first_name
    	t.string :last_name
    end
  end
end
