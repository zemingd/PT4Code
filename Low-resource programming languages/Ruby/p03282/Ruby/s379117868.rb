s = gets.chomp
k = gets.to_i

if s[0...k].match(/1#{[k, s.length].min}/)
  puts s[0]
else
  puts s.match(/[2-9]/)
end