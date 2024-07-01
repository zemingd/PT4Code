min = -> (a, b) { a < b ? a : b }

n = gets.to_i
h = gets.split.map &:to_i

d = [0, (h[1] - h[0]).abs]

(2...n).each { |i|
  a = d[i - 1] + (h[i - 1] - h[i]).abs
  b = d[i - 2] + (h[i - 2] - h[i]).abs
  d << min[a, b]
}

puts d.last
