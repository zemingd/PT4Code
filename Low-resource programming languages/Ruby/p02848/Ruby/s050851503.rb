n = gets.to_i
chars = gets.chomp.split("")
als = ('a'..'z').to_a
results = []

chars.each do |char|
  results << als[(als.index(char) + n) % als.size]
end

puts results.join
