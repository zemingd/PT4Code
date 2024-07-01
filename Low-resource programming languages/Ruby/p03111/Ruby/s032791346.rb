N, A, B, C = gets.chomp.split(" ").map(&:to_i)
LS = []
INF = 10 ** 9
N.times do
  LS << gets.chomp.to_i
end

@ans = INF

def dfs(i, a_length, b_length, c_length)
  if i == N
    if [a_length, b_length, c_length].include?(0)
      return INF
    else
      return (a_length - A).abs + (b_length - B).abs + (c_length - C).abs
    end
  end

  # どの材料にもしない場合
  @ans = [@ans, dfs(i + 1, a_length, b_length, c_length)].min
  # Aの材料にする場合
  @ans = [@ans, dfs(i + 1, a_length + LS[i], b_length, c_length) + 10].min
  # Bの材料にする場合
  @ans = [@ans, dfs(i + 1, a_length, b_length + LS[i], c_length) + 10].min
  # Cの材料にする場合
  @ans = [@ans, dfs(i + 1, a_length, b_length, c_length + LS[i]) + 10].min

  # 全探索後 ans を返す
  return @ans
end

puts dfs(0 ,0 ,0 ,0) - 30