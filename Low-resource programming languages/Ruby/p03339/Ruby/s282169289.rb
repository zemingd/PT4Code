n = gets.to_i
s = gets.chomp
min = n
w = s.scan(/W/).size
e = n - w
l = 0
(0...n).each do |x|
  if s[x] == 'W'
    l += 1
    w -= 1
  else
    e -= 1
  end
  m = (s[x] == 'W') ? l+e-1 : l+e  
  min = m if min > m
end
puts min