n = gets.to_i
chars = gets.chomp.split("")
als = ('A'..'Z').to_a
results = []

chars.each do |char|
  results << als[(als.index(char)+n) % 26 ]
end

puts results.join
