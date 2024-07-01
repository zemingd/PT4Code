N,K = gets.split.map(&:to_i)
D = 10.times.to_a - gets.split.map(&:to_i)

M = N.to_s.chars.map(&:to_i)
E = M.map { 0 }

i = M.size - 1
while 0 <= i
  if D[E[i]] < M[i]
    E[i] += 1
  else
    i -= 1
    break if i < 0
  end
  if D.size <= E[i]
    E[i] = 0
    E[i-1] += 1 if i != 0
    i -= 1
    if i < 0
      E.fill(0).insert(0, D.find_index {|k| 0 < k })
    end
  elsif M[i] < D[E[i]]
    (i+1).step(M.size-1) {|j| E[j] = 0 }
  end
end

puts E.map {|i| D[i] }.join