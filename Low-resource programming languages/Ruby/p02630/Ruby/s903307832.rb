gets.to_i
ary = gets.split.map(&:to_i)
q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)
  ary = ary.map { |a| a == b ? a = c : a }
  p ary.sum
end