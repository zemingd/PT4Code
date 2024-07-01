a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

t.times{
  a += v
  b += w}

if v <= w
  puts "NO"
else
  puts b <= a ? "YES" : "NO"
end