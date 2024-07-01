x,k,d = gets.chomp.split(" ").map(&:to_i)

num = [(x / d).abs, k].min
if x >= 0
  x -= num * d
else
  x += num * d
end

k -= num
if k % 2 == 0
  puts x.abs
elsif x >= 0
  puts (x - d).abs
else
  puts (x + d).abs
end
