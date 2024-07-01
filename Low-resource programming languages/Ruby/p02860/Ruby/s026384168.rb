n = readline.to_i
s = readline.chomp
prefix = s[0, (n/2)];
if s == prefix + prefix
  puts "Yes"
else
  puts "No
end