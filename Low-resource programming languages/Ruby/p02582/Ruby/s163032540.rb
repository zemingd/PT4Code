s = gets.chomp
ans = 0
max = 0
s.size.times do |i|
  if s[i] == 'R'
    ans += 1
  else
    ans = 0
  end
  max = ans if max < ans
end
puts max