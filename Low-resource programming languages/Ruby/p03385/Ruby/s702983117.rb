S = gets.chomp
if 'abc' == S.chars.to_a.sort.join
  puts 'Yes'
else
  puts 'No'
end