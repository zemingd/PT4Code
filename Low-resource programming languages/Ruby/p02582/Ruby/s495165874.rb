s = gets.chomp
if s === 'RRR'
  puts 3
elsif s.include?('RR')
  puts 2
elsif s.include?('R')
  puts 1
else
  puts 0
end
