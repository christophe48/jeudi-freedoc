class LienSpecialtyDoctor < ActiveRecord::Migration[5.2]
  def change
    #je fait le liens entre docteur et spécialité via ma table intermédiaire
  	add_reference :specialty_ids, :doctor, foreign_key:true
  	add_reference :specialty_ids, :specialty, foreign_key:true
  end
end
