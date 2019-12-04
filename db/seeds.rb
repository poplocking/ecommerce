# frozen_string_literal: true

50.times do
  Product.create(ProductName: Faker::Kpop.girl_groups)
end
puts "Generated #{Product.count} products"
