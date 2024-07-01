n, k = gets.chomp.split(' ').map(&:to_f)

prob = 0.0
for j in 1..n
  i = 1.0
  while j < k
    prob += (1 / n) * (1.0/2.0) ** i
    j = j * 2.0
    i = i + 1.0
  end
end

puts (1.0 - prob)