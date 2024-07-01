s = gets.chomp

c = s.count('R')

if c != 2
  puts c
elsif s == 'RRS' || s == 'SRR'
  puts c
else
  puts 1
end