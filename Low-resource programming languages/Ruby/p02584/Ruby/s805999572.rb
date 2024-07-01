x, k, d = gets.split(" ").map &:to_i
if (k*d) <= x.abs
  puts x.abs - k*d
  exit
end
l = x.abs/d
if (k - l)%2 == 1
  puts (x.abs - l*d -d).abs
else
  puts x.abs - l*d
end