x, k, d = gets.split.map(&:to_i)

if x.abs > k * d
  puts x.abs - k * d
  exit
end

n = x.abs / d

if (n - k) % 2 == 0
  puts x.abs - n * d
else
  puts (n+1) * d - x.abs
end
