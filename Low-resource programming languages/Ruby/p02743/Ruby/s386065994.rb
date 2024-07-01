A, B, C = gets.chomp.split(" ").map(&:to_i)

if A * B * 4 < (C - A - B)**2 ||
  4 * B * C < (C + B - A)**2 ||
  4 * A * C < (C + A - B)**2
  puts "Yes"
else
  puts "No"
end
