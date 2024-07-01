# coding: utf-8
s = gets.chomp
ans = 0
loop do
  i = s.index('10')
  i = s.index('01') if i.nil?
  break if i.nil?
  s = s[0, i] + s[i+2, s.size]
  ans += 2
end
puts ans
