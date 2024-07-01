n = gets.chomp.to_i
s = gets.chomp
if n % 2 == 1
  puts 'No'
else
  ss = s[n/2, n/2]
  puts (s == "#{ss}#{ss}") ? 'Yes' : 'No'
end
