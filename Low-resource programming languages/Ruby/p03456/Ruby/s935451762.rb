c = gets.chomp.split(" ").join().to_i
puts Math.sqrt(c).to_i ** 2 == c ? "Yes" : "No"