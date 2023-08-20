# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' , date_of_birth: "1900-01-01", active: true}, { name: 'Lord of the Rings' , date_of_birth: "1900-01-01", active: true}])
#   Character.create(name: 'Luke', movie: movies.first)

User.create_with(password:"sou_o_maior").find_or_create_by(name: "Marco", username: "marques", active: true, email: "marco.a.s.m@hotmail.com")
User.create_with(password:"sou_uma_gata").find_or_create_by(name: "Teimosa", username: "andreia", active: true, email: "andreiapgf@gmail.com")

Patient.create!([
  { name: "Mª de Lurdes Novais", date_of_birth: "1900-01-01", active: true},
  { name: "Mª do Céu Teles", date_of_birth: "1900-01-01", active: true},
  { name: "Edite Timóteo ", date_of_birth: "1900-01-01", active: true},
  { name: "Mª Neves Rocha", date_of_birth: "1900-01-01", active: true},
  { name: "Mª de Lurdes Morais", date_of_birth: "1900-01-01", active: true},
  { name: "Ermelinda Silva", date_of_birth: "1900-01-01", active: true},
  { name: "Idalina Ribeiro", date_of_birth: "1900-01-01", active: true},
  { name: "Isidro Baltazar ", date_of_birth: "1900-01-01", active: true},
  { name: "José Maria Gomes ", date_of_birth: "1900-01-01", active: true},
  { name: "Mª Alice Jacinto ", date_of_birth: "1900-01-01", active: true},
  { name: "Mª do Rosário Santos ", date_of_birth: "1900-01-01", active: true},
  { name: "Isaura Gomes", date_of_birth: "1900-01-01", active: true},
  { name: "Henriqueta Guerreiro ", date_of_birth: "1900-01-01", active: true},
  { name: "Delfina Santos", date_of_birth: "1900-01-01", active: true},
  { name: "Eva Moura", date_of_birth: "1900-01-01", active: true},
  { name: "Cacilda Santos", date_of_birth: "1900-01-01", active: true},
  { name: "Arlete Albuquerque", date_of_birth: "1900-01-01", active: true},
  { name: "Francisco Fonseca", date_of_birth: "1900-01-01", active: true},
  { name: "Mª de Lourdes Azevedo", date_of_birth: "1900-01-01", active: true},
  { name: "Maria Rodrigues", date_of_birth: "1900-01-01", active: true},
  { name: "Maria de Lurdes", date_of_birth: "1900-01-01", active: true},
  { name: "Remédios Pinto", date_of_birth: "1900-01-01", active: true},
  { name: "Virgínia Albuquerque", date_of_birth: "1900-01-01", active: true},
  { name: "Miguel Ferreira", date_of_birth: "1900-01-01", active: true},
  { name: "José Rodrigues", date_of_birth: "1900-01-01", active: true},
  { name: "Mª Luz Ferreira", date_of_birth: "1900-01-01", active: true},
  { name: "Assunção Oliveira  ", date_of_birth: "1900-01-01", active: true},
  { name: "Mª Filomena", date_of_birth: "1900-01-01", active: true},
  { name: "Maria Ribeiro", date_of_birth: "1900-01-01", active: true},
  { name: "Celestina Marques", date_of_birth: "1900-01-01", active: true},
  { name: "Noémia Remédios", date_of_birth: "1900-01-01", active: true},
  { name: "Vicentina Domingues", date_of_birth: "1900-01-01", active: true},
  { name: "Mª Natália Correia", date_of_birth: "1900-01-01", active: true},
  { name: "Mª do Céu Ferreira", date_of_birth: "1900-01-01", active: true},
  { name: "Manuel Pinto", date_of_birth: "1900-01-01", active: true},
  { name: "Mª Salomé Ramos", date_of_birth: "1900-01-01", active: true},
  { name: "Cecília Martins", date_of_birth: "1900-01-01", active: true},
  { name: "Esperança Ribeiro", date_of_birth: "1900-01-01", active: true},
  { name: "Celeste Frias", date_of_birth: "1900-01-01", active: true}
  ])

# 5.times do |i|
#   30.times do |j|
#     ProcessEntry.find_or_create_by(
#       :date => "2022-11-#{j+1, date_of_birth: "1900-01-01", active: true}",
#       :patient_id => (i + 1),
#       :breakfast1 => 1,
#       :breakfast2 => 1,
#       :lunch => 1,
#       :afternoon_snack => 1,
#       :dinner => 1,
#       :supper => 1,
#       :hygiene_oral => 1,
#       :wash_hands => 1,
#       :wc_acomp => 1,
#       :diaper_change => 1,
#       :skin_hidratation => 1,
#       :shower => 1,
#       :hygiene_finger_nail => 1,
#       :dress => 1,
#       :hair_brushing => 1,
#       :hair_dresser => 1,
#       :estetic_or_barber => 1,
#       :cloth_wash => 1,
#       :cloth_dry => 1,
#       :cloth_iron => 1,
#       :cloth_distribution => 1,
#       :terap_fast => 1,
#       :terap_breakfast => 1,
#       :terap_lunch => 1,
#       :terap_afternoon_snack => 1,
#       :terap_dinner => 1,
#       :terap_bed => 1,
#       :e_social => 1,
#       :sociology => 1,
#       :asc => 1,
#       :facility_exists => 1,
#       :vital_avaliations => 1,
#       :recreational_activities => 1,
#       :spiritual_activities => 1,
#       :inteligence_activities => 1,
#       :cultural_activities => 1,
#       :sport_activities => 1,
#       :everyday_activities => 1,
#       :social_activities => 1,
#       :other => 1
#     )
#   end
# end