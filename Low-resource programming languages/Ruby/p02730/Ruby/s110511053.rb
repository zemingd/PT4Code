s = gets.strip.split("")
a = (s.length-1)/2-1
b = (s.length+3)/2-1
if s.length <= 4
  puts "No"
else
  if s == s.reverse && s[0..a] == s[b..-1]
    puts "Yes"
  else
    puts "No"
  end
end

