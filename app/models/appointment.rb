class Appointment < ApplicationRecord
	#j'indique ma relation qu'un rdv implique un docteur, un patient et une ville
	#cette table me permet de faire le lien entre docteurs et patients
	belongs_to :doctor
	belongs_to :patient
	belongs_to :city
end
