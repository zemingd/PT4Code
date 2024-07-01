n, tmpa, tmpb = gets.split.map(&:to_i)
a, b = [tmpa, tmpb].sort

cnt = 0
# 奇数だけ離れていると、一番上か下に行く必要がある
if (a - b).odd?
  # a のほうが端っこに近い場合
  if a - 1 < n - b
    p (b + a - 1) / 2
  else
    p (2*n - a - b + 1) / 2
  end
else
  # 偶数の場合、真ん中で落ち合えば良い
  p (b - a) / 2
end
