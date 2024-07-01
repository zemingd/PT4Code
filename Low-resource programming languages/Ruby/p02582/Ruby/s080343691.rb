n = gets.chomp
if (n.include?('RRR'))
  puts '3'
  exit
elsif(n.include?('RR'))
  puts '2'
  exit
elsif(n.include?('R'))
  puts '1'
  exit
else
  puts '0'
  exit
end
