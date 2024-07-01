n = gets.to_i
text = gets.chomp

alphabets = ('A'..'Z').to_a
new_chars = []
text.each_char do |c|
  idx = alphabets.index(c)    
  new_chars.push(alphabets[(idx + n) % alphabets.length])
end

puts(new_chars.join(''))