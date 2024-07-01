N = gets.to_i
W = gets.split(' ').map(&:to_i)
min = 10 ** 9

(1..N - 1).each do |i|
  diff = (W[0, i].inject(:+) - W[i, N - 1 + i].inject(:+)).abs
  min = diff if diff < min
end

p min