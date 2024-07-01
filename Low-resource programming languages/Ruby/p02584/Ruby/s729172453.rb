x, k, d = gets.split(" ").map(&:to_i)

absx = x.abs()
r = x / d
if r > k
  puts x - k * d
  return
end

absx = x - r * d - ((k - r) % 2) * d 
puts absx.abs()