n = gets.to_i
s = gets.chomp.split("")
t = (n / 2) -1

if (s.join) == s[0..t].join + s[0..t].join
  puts "Yes"
else
  puts "No"
end
