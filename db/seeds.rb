# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do 
    specialty = Specialty.create!(title:['ophtalmo', 'pediatre', 'géneraliste','podologue'].sample)
end

5.times do 
    city = City.create!(name: Faker::Address.city)
end

5.times do 
    doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 10), specialty_id:1, city_id:2) 
end


5.times do 
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id:2)
end


5.times do 
    appointment = Appointment.create!(patient_id:3, doctor_id:5, city_id:2)
end



  
