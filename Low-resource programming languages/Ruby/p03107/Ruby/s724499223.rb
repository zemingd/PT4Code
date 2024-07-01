s = gets.chomp.reverse
c = 0
while s.count('0') > 0 && s.count('1') > 0
  s.gsub!(/0a*1/, 'a')
  s.gsub!(/1a*0/, 'a')
  c += s.count('a') * 2
#  s.gsub!(/a/, '')
end
puts c