w = gets.strip

if w.include?('RRR')
  p 3
elsif w.include?('RR')
  p 2
elsif w.include?('R')
  p 1
else
  p 0
end