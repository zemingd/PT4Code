n = gets.chomp.to_i
s = gets.chomp
if s[0,n/2] == s[n/2,n]
  puts 'Yes'
else
  puts 'No'
end
