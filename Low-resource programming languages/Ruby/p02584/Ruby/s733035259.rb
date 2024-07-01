x, k, d = gets.split(" ").map(&:to_i)

if x.abs >= k * d
  puts x.abs - (k * d)
  exit
end

before_0 = x / d 
# puts x - (before_0 * d)
# puts (x - (before_0 * d) - d)
# puts [(x - (before_0 * d)).abs, (x - (before_0 * d) - d).abs].min
# puts k - before_0
if (k - before_0) % 2 == 0
  puts (x - (before_0 * d)).abs
else (k - before_0) % 2 != 0
  puts  (x - (before_0 * d) - d).abs
end