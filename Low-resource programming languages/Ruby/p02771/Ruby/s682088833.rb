A, B, C = gets.split.map(&:to_i)

if A == B && A != C
  puts 'Yes'
elsif A == C && A != B
  puts 'Yes'
elsif B == C && A != B
  puts 'Yes'
else
  puts 'No'
end