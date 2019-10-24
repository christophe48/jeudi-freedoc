class City < ApplicationRecord
	#J'indique ma relation que dans une ville il peut y avoir plusieur rdv, plusieur docteurs et plusieur patients
	has_many :appointments
	has_many :doctors
	has_many :patients
end
