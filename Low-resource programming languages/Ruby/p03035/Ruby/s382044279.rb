line = gets.chomp
n1,n2 = line.split.map(&:to_i)
if n1 <= 6
  puts 0
elsif n1 <= 12
  puts n2/2
else
  puts n2
end
