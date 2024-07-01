N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{gets.to_i}

def dfs(i, a, b, c)
  if i == N
    if a == A || b == B || c == C
      Float::INFINITY
    else  
      return a.abs + b.abs + c.abs - 30
    end 
  else
    return [dfs(i + 1, a, b, c),
            dfs(i + 1, a - L[i], b, c) + 10,
            dfs(i + 1, a, b - L[i], c) + 10,
            dfs(i + 1, a, b, c - L[i]) + 10].min
  end 
end

puts dfs(0, A, B, C)
