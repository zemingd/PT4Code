a, b = gets.split(' ')
puts Math.sqrt((a + b).to_i) % 1 == 0 ? 'Yes' : 'No'