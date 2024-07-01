include Math
N, K = gets.split.map(&:to_i)

ans = 0
cnt = 0
1.upto N do |i|
  # さいころで目iが出た瞬間ゲームに勝利
  if i >= K
    ans += 1.to_f / N.to_f
  # iの方が小さいのでコインを投げる
  else
    # 表が出続ける回数log2(K/i).ceilを計算
    cnt = ( log2(K) - log2(i) ).ceil
    # puts cnt
    ans += 1.to_f / (N * (2**cnt)).to_f
    # puts ans
  end
end
puts ans