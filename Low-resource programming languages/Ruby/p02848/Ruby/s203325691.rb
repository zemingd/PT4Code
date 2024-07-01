n = gets.chomp.to_i
s = gets.chomp

alpha = [*'A'..'Z']

ans = ''

s.length.times do |i|
  idx = (alpha.index(s[i]) + n) % 26
  ans += alpha[idx]
end

puts ans

