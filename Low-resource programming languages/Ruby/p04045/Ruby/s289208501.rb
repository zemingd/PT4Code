N,K = gets.split.map(&:to_i)
D = 10.times.to_a - gets.split.map(&:to_i)

M = N.to_s.chars.map(&:to_i)
E = M.map { 0 }

i = 0
while i.between?(0, M.size-1)
  if D.size <= E[i]
    if i == 0
      E.insert(0, D.find {|k| 0 < k })
      break
    else
      E[i] = D.size - 1
      E[i-1] += 1
      i -= 1
    end
  elsif D[E[i]] < M[i]
    E[i] += 1
    break if M[i] < D[E[i]]
  else
    i += 1
  end
end
puts E.map {|i| D[i] }.join