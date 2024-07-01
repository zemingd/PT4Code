s = gets.chomp.split('')
ans = 700
s.each do
  ans += 100 if _1 == 'o'
end
puts ans
