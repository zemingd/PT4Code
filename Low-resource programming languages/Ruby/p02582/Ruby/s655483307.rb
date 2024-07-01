S = gets.chomp

if S.include?('RRR')
  puts 3
elsif S.include?('RR')
  puts 2
elsif S.include?('R')
  puts 1
else
  puts 0
end