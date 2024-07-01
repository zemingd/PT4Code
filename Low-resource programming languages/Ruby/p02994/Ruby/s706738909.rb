N,L = gets.split.map(&:to_i)

T = []

min_abs = 100
min_i = 0
(1..N).each do |i|
  t = L+i-1
  T << t
  if t.abs < min_abs
    min_abs = t.abs
    min_i = i
  end
end
T.delete_at(min_i-1)
puts T.inject(:+)