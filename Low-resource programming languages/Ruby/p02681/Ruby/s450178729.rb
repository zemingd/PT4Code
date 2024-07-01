S=gets.chomp.chars
SS=gets.chomp.chars

count = 0
S.select.with_index{|s,i| count += 1 if s != SS[i]}

if count > 0
  puts "No"
else
  puts "Yes"
end