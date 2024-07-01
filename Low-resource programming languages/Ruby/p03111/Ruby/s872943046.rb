N, A, B, C = gets.split.map(&:to_i)
l_list = N.times.map { gets.to_i }

MAX = 1 << 60

def dfs(l_list, a = 0, b = 0, c = 0, mp = 0, i = 0)
  if i == N
    return MAX if a == 0 || b == 0 || c == 0
    return mp + (A - a).abs + (B - b).abs + (C - c).abs
  end
  [
    dfs(l_list, a + l_list[i], b, c, a == 0 ? mp : mp + 10, i + 1),
    dfs(l_list, a, b + l_list[i], c, b == 0 ? mp : mp + 10, i + 1),
    dfs(l_list, a, b, c + l_list[i], c == 0 ? mp : mp + 10, i + 1),
    dfs(l_list, a, b, c, mp, i + 1)
  ].min
end
ans = dfs(l_list)
puts ans
