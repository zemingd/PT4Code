def synthetic_kadomatsu(n, a, b, c, l)
  dfs = ->(cur, a_len, b_len, c_len) {
    if cur == n
      return [a_len, b_len, c_len].min > 0 ? (a - a_len).abs + (b - b_len).abs + (c - c_len).abs - 30 : INF # 最初の1回分のMP10のコストは本来不要。a,b,c3回分の30引く
    end

    ret0 = dfs.call(cur + 1, a_len, b_len, c_len)
    ret1 = dfs.call(cur + 1, a_len + l[cur], b_len, c_len) + 10
    ret2 = dfs.call(cur + 1, a_len, b_len + l[cur], c_len) + 10
    ret3 = dfs.call(cur + 1, a_len, b_len, c_len + l[cur]) + 10
    [ret0, ret1, ret2, ret3].min
  }
  dfs.call(0, 0, 0, 0)
end

n, a, b, c = gets.split.map(&:to_i)
l = []
n.times { l << gets.to_i }

puts synthetic_kadomatsu(n, a, b, c, l)
