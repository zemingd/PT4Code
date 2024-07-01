s = gets.chomp
regex = /(dreamer|dream|eraser|erase)+/
if match = s.match(regex)
  if s == match[0]
    puts "YES"
  else
    puts "NO"
  end
else
  puts "NO"
end
