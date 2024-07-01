def dp(n, a, b, c, ary, ans, cnt, lA, lB, lC)
  if cnt == n
    return [lA, lB, lC].min > 0 ? (a - lA).abs + (b - lB).abs + (c - lC).abs - 30 : INF
  else
    mp0 = dp(n, a, b, c, ary, ans, cnt + 1, lA, lB, lC)
    mp1 = dp(n, a, b, c, ary, ans, cnt + 1, lA + ary[cnt], lB, lC) + 10
    mp2 = dp(n, a, b, c, ary, ans, cnt + 1, lA, lB + ary[cnt], lC) + 10
    mp3 = dp(n, a, b, c, ary, ans, cnt + 1, lA, lB, lC + ary[cnt]) + 10
    return [mp0, mp1, mp2, mp3].min
  end
end
INF = 1E9
n, a, b, c = gets.split.map(&:to_i)
ary = []
ans = []

n.times do
  ary << gets.to_i
end

puts dp(n, a, b, c, ary, ans, 0, 0, 0, 0)
