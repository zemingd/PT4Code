S = gets.chomp

if S.chars.sort.join == 'abc'
  puts 'Yes'
else
  puts 'No'
end
