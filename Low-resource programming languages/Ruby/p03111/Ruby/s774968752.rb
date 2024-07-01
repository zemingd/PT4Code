def dp(n, a, b, c, ary, ans, cnt, lA, lB, lC, cnt2, mp)
  if cnt == n
    cnt2[0] += 1
    ans << (a - lA).abs + (b - lB).abs + (c - lC).abs + mp
  else
    dp(n, a, b, c, ary, ans, cnt + 1, lA, lB, lC, cnt2, mp)
    if lA == 0
      dp(n, a, b, c, ary, ans, cnt + 1, lA + ary[cnt], lB, lC, cnt2, mp)
    else
      dp(n, a, b, c, ary, ans, cnt + 1, lA + ary[cnt], lB, lC, cnt2, mp + 10)
    end
    if lB == 0
      dp(n, a, b, c, ary, ans, cnt + 1, lA, lB + ary[cnt], lC, cnt2, mp)
    else
      dp(n, a, b, c, ary, ans, cnt + 1, lA, lB + ary[cnt], lC, cnt2, mp + 10)
    end
    if lC == 0
      dp(n, a, b, c, ary, ans, cnt + 1, lA, lB, lC + ary[cnt], cnt2, mp)
    else
      dp(n, a, b, c, ary, ans, cnt + 1, lA, lB, lC + ary[cnt], cnt2, mp + 10 * lC)
    end
  end
end

n, a, b, c = gets.split.map(&:to_i)
ary = []
ans = []

n.times do
  ary << gets.to_i
end

dp(n, a, b, c, ary, ans, 0, 0, 0, 0, [0], 0)

puts ans.min
