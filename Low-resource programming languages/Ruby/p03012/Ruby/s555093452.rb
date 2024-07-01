N = gets.to_i
W = gets.split.map(&:to_i)
sum = []
(1..N).each do|i|
  w1 = W.slice(0, i)
  w2 = W.slice(i, W.length-i)
  sum << (w1.inject(:+).to_i - w2.inject(:+).to_i).abs
end
p sum.min