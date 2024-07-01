n = gets.strip.to_s
until n.empty? do
 if n[-1]=='e'
  next if n.gsub!(/eraser$/, '')
  next if n.gsub!(/erase$/, '')
 elsif n[-1]=='d'
  next if n.gsub!(/dreamer$/, '')
  next if n.gsub!(/dream$/, '')
 end
   break
end
puts n
if n.length == 0
  puts 'YES'
else
  puts 'NO'
end