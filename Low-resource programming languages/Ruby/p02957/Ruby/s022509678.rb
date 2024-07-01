a, b =  gets.chomp.split.map(&:to_i)

if a % 2 != b % 2
  puts "IMPOSSIBLE"
else
  puts (a + b) / 2
end