# 解説AC
INF = 10 ** 9
N,A,B,C = gets.split.map(&:to_i)
@lists = []
N.times do
  @lists << gets.to_i
end

def dfs(cur, a, b, c)
  # 全ての竹材を吟味したならば
  if cur == N
    # -30は１本目を追加した際にも合成コストである+10されている為
    # a,b,cそれぞれ余分に追加された合成コストの合計分を
    # 減算している。
    return [a, b, c].min > 0 ? (a - A).abs + (b - B).abs + (c - C).abs - 30 : INF
  end
  ret0 = dfs(cur + 1, a, b, c)
  ret1 = dfs(cur + 1, a + @lists[cur], b, c) + 10
  ret2 = dfs(cur + 1, a, b + @lists[cur], c) + 10
  ret3 = dfs(cur + 1, a, b, c + @lists[cur]) + 10
  return [ret0, ret1, ret2, ret3].min
end
puts dfs(0,0,0,0)
