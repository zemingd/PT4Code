N = gets.to_i
M = Array.new(N+1, -1)
(N-1).times do
  u,v,w = gets.split.map &:to_i
  if M[u] == -1
    if M[v] == -1
      if w.even?
        M[u] = 0
        M[v] = 0
      else
        M[u] = 0
        M[v] = 1
      end
    else
      if w.even?
        M[u] = M[v]
      else
        M[u] = 1 - M[v]
      end
    end
  else
    if w.even?
      M[v] = M[u]
    else
      M[v] = 1 - M[u]
    end
  end
end

1.upto(N) do |i|
  puts M[i]
end
