n, tmpa, tmpb = gets.split.map &:to_i
a, b = [tmpa, tmpb].sort

# 奇数だけ離れていると、一番上か下に行く必要がある
if (a - b).odd?
  p [n - a, b - 1].min
else
  # 偶数の場合、真ん中で落ち合えば良い
  p (b - a) / 2
end
