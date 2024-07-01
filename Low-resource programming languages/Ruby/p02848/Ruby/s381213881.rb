n = gets.to_i
chars = gets.chomp.split('')
alphabets = ('A'..'Z').to_a
results = []
 
chars.each do |char|
  results << alphabets[(alphabets.index(char) + n) % alphabets.size]
end
 
puts results