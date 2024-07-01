N = gets.chomp.split(" ").join.to_i

puts Math.sqrt(N).round ** 2 == N ? 'Yes' : 'No'
