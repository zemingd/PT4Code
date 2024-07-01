A,B,C = gets.chomp.split(" ").map(&:to_s)
if A== B && B == C 
  puts 'No'
elsif A== B || B == C || A==C
  puts 'Yes'
else
  puts 'No'
end