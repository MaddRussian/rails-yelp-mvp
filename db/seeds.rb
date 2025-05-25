puts 'Cleaning out the DB...'
Restaurant.destroy_all

puts "Creating restaurants...."

10.times do
  # inside of the seeds, you can use Pet.create! to stop the seeds if it fails
  Restaurant.create!(
    name: Faker::Restaurant.unique.name,
    category: Restaurant::CATEGORIES.sample,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number
  )
end

puts "... created #{Restaurant.count} restaurants."
