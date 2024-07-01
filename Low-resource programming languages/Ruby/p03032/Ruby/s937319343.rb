n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
op = [n, k].min
max = 0

op.times do |i|
  (op - i).times do |j|
    hand = v.take(i) + v.drop(n - j)
    neg, pos = hand.sort.partition(&:negative?)
    max = [neg.drop(k - i - j).sum + pos.sum, max].max
  end
end

puts max