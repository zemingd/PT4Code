x, k, d = gets.split.map(&:to_i)
n = x / d

if k < n
  puts x.abs - k * d
  exit
end

diff = n * d
x2 = (x.abs - diff).abs

if (k - n) % 2 == 0
  puts x2
  exit
end

x3 = (x2.abs - d).abs
puts x3.abs
