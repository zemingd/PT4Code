s = gets
ans = 0
tmp = 0

s.length.times do |i|
  (i..s.length-1).each do |j|
    break if s[j] != 'A' and s[j] != 'C' and s[j] != 'G' and s[j] != 'T'
    tmp += 1
  end
  ans = [ans, tmp].max
  tmp = 0
end

puts ans 