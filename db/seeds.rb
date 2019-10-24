# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#je détruie tout ce que je crée pour éviter d'avoir une trop grosse bdd avec des faux infos
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
SpecialtyId.destroy_all

#je crée mes tableau pour pouvoir utiliser la gem faker
specialite = ["Podologue", "Opticien", "Dentist", "Généraliste"]
c = []
d = []
p = []
#je fais ma première boucle sur cities car je ne peux pas créer doctor et patient sans se ratachement
10.times do |index|
	c << City.create(id:index,name: Faker::Address.city)
	puts "#{Faker::Address.city} crée"
end
#je fais une deuxième boucle en prenant en compte une ville aléatoire de mon tableau c
10.times do |index|
	d << Doctor.create(id:index,first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: c.sample)
	p << Patient.create(id:index,first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: c.sample)
	puts "Docteur : #{Faker::Name.first_name} créé"
end
#je fais une 3eme boucle pour créer mes tables intermédiaires
10.times do |index|
	s = Specialty.create(name:specialite.sample)
	SpecialtyId.create(doctor: d.sample, specialty: s)
	Appointment.create(doctor: d.sample, patient: p.sample, date:Faker::Time.forward(days: 23), city: c.sample)
	puts "Date rendez-vous : #{Faker::Time.forward(days: 23)}"
end
