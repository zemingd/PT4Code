N = gets.chomp.to_i
d = difficulties = gets.chomp.split().map(&:to_i).sort
medium = d.size/2
if d[medium-1] == d[medium]
  puts 0
else
  puts (d[medium] - d[medium-1])
end