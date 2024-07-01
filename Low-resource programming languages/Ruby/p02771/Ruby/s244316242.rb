a,b,c = gets.chomp.split.map(&:to_i)

if a == b and b != c
  puts 'Yes'
elsif b == c and a != b
  puts 'Yes'
elsif c == a and a != b
  puts 'Yes'

else
  puts 'No'
end