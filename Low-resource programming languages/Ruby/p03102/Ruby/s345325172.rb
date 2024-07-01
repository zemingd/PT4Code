# abc121 B
n, m, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

A = n.times.map do
  gets.split.map(&:to_i)
end

p A.count { |as|
  r = as.map.with_index { |a, i|
    a * b[i]
  }.inject(:+) + c
  r > 0
}
