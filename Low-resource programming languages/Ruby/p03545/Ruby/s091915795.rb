A, B, C, D = gets.chomp.chars.map(&:to_i)

def dfs(ns, i, n, ret)
  if i == 3
    return n == 7 ? ret : nil
  end
  m = ns[i]
  dfs(ns, i + 1, n + m, ret + "+#{m}") || dfs(ns, i + 1, n - m, ret + "-#{m}")
end

ans = dfs([B, C, D], 0, A, A.to_s) + "=7"
puts ans
