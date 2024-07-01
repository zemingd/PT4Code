require 'pp'

n = gets.to_i
d = gets.split.map(&:to_i)
sum = 0
n.times do |i|
  n.times do |ii|
    next if i >= ii
    sum += d[i] * d[ii]
  end
end
p sum
