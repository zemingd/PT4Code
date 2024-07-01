s = gets.chomp.reverse
c = 0
while s.split('').uniq.length > 1
  s.gsub!(/01/, 'a')
  s.gsub!(/10/, 'a')
  c += s.count('a') * 2
  s.gsub!(/a/, '')
end
puts c