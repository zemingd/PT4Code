a,b = gets.chomp.split(" ").map(&:to_i)
if a * b % 2 == 0
  puts even
else
  odd
end