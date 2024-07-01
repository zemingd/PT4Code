n = gets.to_i
s = gets.chomp

count = 0
n.times do |i|
    count += 1 if s[i] != s[i+1]
end

puts count