chars = ""
while str = gets
  chars += str.downcase
end

('a'..'z').each do |letter|
  # puts chars.count(letter)
  puts "#{ letter } : #{ chars.count(letter) }"
end