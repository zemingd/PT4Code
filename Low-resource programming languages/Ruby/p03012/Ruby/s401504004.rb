N = gets.to_i
W = gets.split.map!(&:to_i)
sum = W.inject(:+)

min = 100*100
N.times do |i|
  weight = 0
  i.times do |k|
    weight += W[k]
  end
  abs = (weight - (sum-weight)).abs
  min = abs if min > abs
end

p min
