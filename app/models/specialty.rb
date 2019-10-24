class Specialty < ApplicationRecord
	#j'indique que m'a spécialité peut être la spécialité de plusieur docteurs
	has_many :specialty_ids
   	has_many :doctors, through: :specialty_ids
end
