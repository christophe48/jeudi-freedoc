class CreateCities < ActiveRecord::Migration[5.2]
  def change
    #je crée ma table citie
    create_table :cities do |t|
    	t.string :name
    end
  end
end
