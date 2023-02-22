# Clean existing db records
puts "Cleaning database..."
Restaurant.destroy_all

# Create 5 restaurants with Faker gem
puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
end

# Notice user that job is finished
puts "All restaurants have been created!"
