N = gets.to_i

def number_length(n)
  n.to_s.length
end

ans = number_length(N)
for a in 1..Math.sqrt(N)
  next if N % a != 0
  b = N/a
  f_a_b = [number_length(a), number_length(b)].max
  ans = [ans, f_a_b].min
end

puts ans