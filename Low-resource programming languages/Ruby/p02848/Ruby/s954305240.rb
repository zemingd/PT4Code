alphabet = ('A'..'Z').to_a
n = gets.to_i
s = gets.chomp
new_s = ""
s.chars do |ch|
  index = alphabet.index(ch) + n
  index -= 26 if index > 25
  new_s << alphabet[index]
end
puts new_s
