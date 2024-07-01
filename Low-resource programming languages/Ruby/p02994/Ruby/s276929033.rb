N, L = gets.split.map(&:to_i)

min_abs = Float::INFINITY
min_val = 0
expected = 0
(1..N).each do |n|
  a = L+n-1
  if a.abs < min_abs
    min_abs = a.abs
    min_val = a
  end
  expected += a
end

p expected - min_val