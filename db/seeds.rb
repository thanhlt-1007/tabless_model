100.times do
  Product.create name: FFaker::Lorem.sentence,
    description: FFaker::Lorem.sentences.join(" "),
    price: rand(100)
end
