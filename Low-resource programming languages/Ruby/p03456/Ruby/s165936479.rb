ab = gets.chomp.split
n = ab.join.to_i
puts Math.sqrt(n).to_i ** 2 == n ? 'Yes' : 'No'
