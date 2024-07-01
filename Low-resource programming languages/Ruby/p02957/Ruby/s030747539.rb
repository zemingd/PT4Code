a, b = STDIN.readlines.first.chomp.split(" ").map(&:to_i)
if (a + b) % 2 == 1
  puts "IMPOSSIBLE"
  exit
end

puts (a + b) / 2
