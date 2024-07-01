N, L = gets.split.map(&:to_i)

min_abs = Float::INFINITY
index = 0
expected = 0
(1..N).each_with_index do |n, i|
  a = L+n-1
  if a.abs < min_abs
    min_abs = a.abs
    index = i
  end
  expected += a
end

p expected - min_abs
