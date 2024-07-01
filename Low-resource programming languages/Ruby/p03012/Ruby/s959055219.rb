N = gets.to_i
W = gets.split.map(&:to_i)

min = W.sum
N.times do |i|
  temp = (W.slice(0, i + 1).sum - W.slice(i + 1, W.length).sum).abs
  if min > temp
    min = temp
  end
end

puts min