s = gets.chomp
t = gets.chomp

ans = 0

(0..2).each do |i|
  ans += 1 if s[i] == t[i]
end

puts ans