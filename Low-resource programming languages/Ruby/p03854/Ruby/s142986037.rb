s = gets.strip
s = s.reverse

while s.size > 0
  t = s
  s.gsub!(/resare/, '')
  s.gsub!(/esare/, '')
  s.gsub!(/remaerd/, '')
  s.gsub!(/maerd/, '')
  break if t == s
end

if s.size == 0
  puts 'YES'
else
  puts 'NO'
end
