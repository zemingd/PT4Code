n = gets.strip.to_s
until n.empty? do
  next if n.gsub!(/eraser$/, '')
  next if n.gsub!(/erase$/, '')
  next if n.gsub!(/dreamer$/, '')
  next if n.gsub!(/dream$/, '')
   break
end
puts n
if n.length == 0
  puts 'YES'
else
  puts 'NO'
end