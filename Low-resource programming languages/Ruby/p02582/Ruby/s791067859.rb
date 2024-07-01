s = gets.chomp
sum = 0
if s == 'RRR'
  sum = 3
elsif s == 'RRS' || s == 'SRR'
  sum = 2
elsif s.include?('R')
  sum = 1
end
puts sum