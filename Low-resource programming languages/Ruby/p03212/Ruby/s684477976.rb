N = gets.to_i

#文字列sから始まる753数を求める
def dfs(s)
  if s.to_i > N
    return 0
  end

  a = !s.include?("7") || !s.include?("5") || !s.include?("3") ? 0:1

  return a + dfs(s+"7") + dfs(s+"5") + dfs(s+"3")
end

puts dfs("")
