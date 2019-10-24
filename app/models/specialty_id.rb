class SpecialtyId < ApplicationRecord
	#cette table intermédiaire me permet de faire le lien entre docteurs et spécialités
	belongs_to :specialty
	belongs_to :doctor
end
