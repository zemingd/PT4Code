N = STDIN.gets.chomp.to_i
d = STDIN.gets.chomp.split(" ").map(&:to_i)

d.sort!

center = (d.size - 1) / 2

if N % 2 == 1 then
  puts 0
elsif d[center] == d[center+1]
  puts 0
else
  puts d[center+1] - d[center]
end