A, B = gets.chomp.split(" ").map(&:to_i)

l, s = [A, B].sort
if (l - s) % 2 == 0
  puts l - (l - s) / 2
else
  puts "IMPOSSIBLE"
end
