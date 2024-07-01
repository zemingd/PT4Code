x, k, d = gets.split(" ").map(&:to_i)

absx = x.abs
r = absx / d
if r > k
  puts absx - k * d
else
  absx = absx - r * d - ((k - r) % 2) * d 
  puts absx.abs
end