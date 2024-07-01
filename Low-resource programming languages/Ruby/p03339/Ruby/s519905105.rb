N = gets.to_i
S = gets.chomp

W = [0]
E = [0]

S.each_char.with_index(1) do |d, i|
  if d == 'W'
    W[i] = W[i - 1] + 1
    E[i] = E[i - 1]
  else
    W[i] = W[i - 1]
    E[i] = E[i - 1] + 1
  end
end

ans = Float::INFINITY

S.each_char.with_index(1) do |d, i|
  v = W[i - 1] + (E[N] - E[i])

  ans = v if ans > v
end

puts ans
