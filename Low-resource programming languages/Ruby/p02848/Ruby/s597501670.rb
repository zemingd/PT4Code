n = gets.to_i
chars = gets.chomp.split("")
s = ('A'..'Z').to_a
results = []
 
chars.each do |char|
  results << s[(s.index(char) + n) % 26]
end
 
puts results.join