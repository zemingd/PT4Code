n, l = gets.chomp.split(' ').map(&:to_i)

min_abs = Float::INFINITY
min_val = 0
expected = 0
(1..n).each do |i|
  a = i + l - 1
  if a.abs < min_abs
    min_abs = a.abs
    min_val = a
  end
  expected += a
end

res = expected - min_val

puts res