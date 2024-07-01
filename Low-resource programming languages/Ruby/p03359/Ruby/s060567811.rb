a, b = gets.chomp.split(" ").map(&:to_i)

if a <= b then
  puts a
else
  puts a - 1
end