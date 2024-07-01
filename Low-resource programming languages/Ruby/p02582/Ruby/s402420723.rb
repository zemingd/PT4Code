s = gets.chomp

case s
when /RRR/
  puts 3
when /RRS/
  puts 2
when /SRR/
  puts 2
when /SSS/
  puts 0
else
  puts 1
end