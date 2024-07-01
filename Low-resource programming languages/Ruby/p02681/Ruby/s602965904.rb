s = gets.chomp
t = gets.chomp

if s == t.slice(0..-2) && /[a-z]/.match(t[-1])
  puts 'Yes'
else
  puts 'No'
end