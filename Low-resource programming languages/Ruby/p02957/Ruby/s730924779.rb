A, B = gets.chomp.split().map(&:to_i)

if (A + B).even?
  puts (A + B)/2
else
  puts "IMPOSSIBLE"
end