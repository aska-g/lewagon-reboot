paris = {
  country: "France",
  population: 2211000
}

puts "Before update"
p paris[:population]

paris[:population] = 10000000
puts "After update"
p paris[:population]

paris[:monument] = "Eifel tower"
