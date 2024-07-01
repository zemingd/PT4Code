s = gets.chomp
t = gets.chomp

ans = 0

s.chars.each_with_index do |c, i|
  ans += 1 if c == t.chars[i]
end

puts ans