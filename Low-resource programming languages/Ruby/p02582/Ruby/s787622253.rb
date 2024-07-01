s = gets.chomp


if s == 'SSS'
  puts 0
elsif s == 'SSR'  ||  s == 'SRS' || s == 'RSS' || s == 'RSR'
  puts 1
elsif s == 'RRS' || s == 'SRR'
  puts 2
elsif s == 'RRR'
  puts 3
end
