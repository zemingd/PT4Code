x, k, d = gets.split.map(&:to_i)
x = x.abs
n = x / d

if k < n
  puts x - k * d
  exit
end

x = (x - n * d).abs

if (k - n) % 2 == 0
  puts x
else
  x = (x - d).abs
  puts x
end
