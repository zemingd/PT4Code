s = gets.chomp
list = {
  'Sunny' => 'Cloudy',
  'Cloudy' => 'Rainy',
  'Rainy' => 'Sunny'
 }

puts list[s]