s = gets.chomp
nw = { 'Sunny' => 'Cloudy', 'Cloudy' => 'Rainy', 'Rainy' => 'Sunny' }
puts(nw[s])