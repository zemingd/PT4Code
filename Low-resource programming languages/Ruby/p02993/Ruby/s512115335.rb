s = gets.chomp

res = true

(0...(s.length-1)).each do |i|
  res = false if s[i] == s[i+1]
end

puts (res ? "Good" : "Bad")