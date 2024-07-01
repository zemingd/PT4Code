s = gets.chomp
if s == 'RRR'
  puts 3
elsif s == 'RRS' || s == 'SRR'
  puts 2
elsif s == 'RSS' || s == 'SRS' || s == 'SSR' || s == 'RSR'
  puts 1
else
  puts 0
end