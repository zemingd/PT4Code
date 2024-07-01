N, M = gets.split.map(&:to_i)
F = Array.new(M+1, 0)
(1 .. N).each do |i|
  k, *f = gets.split.map(&:to_i)
  f.each do |j|
    F[j] += 1
  end
end
puts (1 .. M).count{|j| F[j] == N }
