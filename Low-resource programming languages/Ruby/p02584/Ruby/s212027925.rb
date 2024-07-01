x, k, d = gets.split(' ').map(&:to_i)
x = x.abs
steps = x / d
if steps > k
  puts x - d * k
  exit 0
end

if (k - steps) % 2 == 0
  puts x % d
else
  puts ((x % d) - d).abs
end
