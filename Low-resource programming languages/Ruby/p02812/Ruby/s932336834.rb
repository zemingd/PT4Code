n = gets.to_i
s = gets.chomp

count = 0
(n-2).times do |i|
    count += 1 if s[i] == "A" && s[i+1] == "B" && s[i+2] == "C"
end

puts count