N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
(1..N).min_by do |x|
  (A - (T - H[x]*0.006)).abs
end
