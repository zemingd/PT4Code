A,B,C=gets.chomp.split.map(&:to_i)

if A==B && A!=C then
  puts 'Yes'
elsif A==C && C!=B then
  puts 'Yes'
elsif B==C && B!=A then
  puts 'Yes'
else
  puts 'No'
end