n = gets.chomp.to_i
s = gets.chomp
s1 = s.slice(0, n / 2)
s2 = s.slice(n / 2, n - (n / 2))
if s1 == s2
  puts "Yes"
else
  puts "No"
end
