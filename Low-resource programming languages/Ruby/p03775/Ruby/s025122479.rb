N = gets.to_i
digits = N.to_s.size
min = 2 << 60
(1...(10 ** (digits / 2 + 2))).each do |n|
  if N % n == 0
    m = N / n
    d = [n.to_s.size, m.to_s.size].max
    min = d if d < min
  end
end
puts min
