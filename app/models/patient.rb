class Patient < ApplicationRecord
	#j'indique dans ma relation qu'un patient peut avoir plusieur rdv
	has_many :appointments
	#avec plusieurs docteurs
   	has_many :doctors, through: :appointments
	#mais qu'il ne peut appartenir qu'à une seule ville
   	belongs_to :city
end
