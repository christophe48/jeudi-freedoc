class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    #je crée ma table doctors
    create_table :doctors do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :specialty
    	t.string :zip_code
    end
  end
end
