n = gets.chomp.to_i
s = gets.chomp

c = 0
(n-2).times do |i|
  c += 1 if s[i] == "A" && s[i+1] == "B" && s[i+2] == "C"
end

puts c