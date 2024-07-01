s = gets.chomp.split("")
a = (s.size-1)/2
sf = s.shift(a)
sb = s.pop(a)
if s == s.reverse
  if sf == sf.reverse && sb == sb.reverse
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
