n, d   = gets.split.map(&:to_i) # n個の点、d次元空間
points = [] # 点の配列
n.times { points << gets.split.map(&:to_i) }
ans = 0 # 答え
(0 .. n - 1).each do |i| # i番目の点
  (0 .. n - 1).each do |j| # j番目の点
    next if i >= j # 同じ点を除く
    sq = 0 # 自乗の合計
    (0 .. d - 1).each do |k| # k番目の次元
      s  = (points[i][k] - points[j][k]) #対応する座標の差
      sq += s * s # 差の自乗を合計 
    end
    s   = Math.sqrt(sq) + 0.5 # 自乗の合計の平方根を整数化
    ans += 1 if s.to_i ** 2 == sq # 整数化の自乗が差の合計になればok
  end
end
p ans

