n = gets.to_i
w = gets.strip.split.map(&:to_i)
sum = w.sum
ary = []
for t in 0..n-1
  ary.unshift((sum-2*w.slice(0..t-1).sum).abs)
end
puts ary.min