class Doctor < ApplicationRecord
	# j'indique dans ma relation qu'un docteur peut avoir plusieur rdv
	has_many :appointments
	#qu'il peut être en liens avec plusieur patients par l'intémédiaire des rdv
   	has_many :patients, through: :appointments
	#et qu'il peut avoir plusieur spécialité
   	has_many :specialty_ids
   	has_many :specialties, through: :specialty_ids
	#mais qu'il ne peut être rataché qu'à une ville
   	belongs_to :city
end
