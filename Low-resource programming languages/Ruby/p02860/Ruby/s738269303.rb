n = gets.chomp.to_i
s = gets.chomp.to_s
if n / 2 * 2 != n
  puts "No"
  exit
elsif s[0, n / 2] == s[n / 2, n / 2]
  puts "Yes"
else
  puts "No"
end
