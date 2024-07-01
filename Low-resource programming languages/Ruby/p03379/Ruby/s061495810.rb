n = gets.to_i
xs = gets.split(" ").map(&:to_i)

n.times do |i|
  tmp = xs.shift
  puts xs.sort[xs.size/2]
  xs.push(tmp)
end