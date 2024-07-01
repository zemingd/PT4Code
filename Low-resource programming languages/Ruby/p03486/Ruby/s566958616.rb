s = gets.strip
t = gets.strip

if s.split('').sort.join('') < t.split('').sort.reverse.join('')
  puts "Yes"
else
  puts "No"
end