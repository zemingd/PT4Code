n = gets
s = gets.chomp
half = s.size/2
if s.size.odd?
  puts 'No'
elsif s[0, half] == s[half, half]
  puts 'Yes'
else
  puts 'No'
end