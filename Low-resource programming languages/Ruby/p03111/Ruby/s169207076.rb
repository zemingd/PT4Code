N,A,B,C=gets.split.map(&:to_i)
ls=readlines.map(&:to_i)

# 近似値とコストを出力する関数
# xが作りたい木で、yが使う本数、zが検査対象の配列
def approx(x, y, z, ms)
  count = 0
  counts=[]
  diff=[]
  ms.each do |m|
    diff.push((x-m).abs)
  end
  count += diff.min
  counts.push(count+(y-1)*10)
  return counts.min
end

# n本を合成した場合の組み合わせを返す
def comb(n, ms)
  combs = ms.combination(n).to_a
  adds=[]
  combs.each do |comb|
    adds.push(comb.inject(:+))
  end
  return adds
end

# 最適コスト
ans = 0

ans_A=[]
1.upto(N) do |n|
  comb_array = comb(n, ls)
  ans_A.push(approx(A, n, comb_array, ls))
end
ans += ans_A.min

ans_B=[]
1.upto(N) do |n|
  comb_array = comb(n, ls)
  ans_B.push(approx(B, n, comb_array, ls))
end
ans += ans_B.min

ans_C=[]
1.upto(N) do |n|
  comb_array = comb(n, ls)
  ans_C.push(approx(C, n, comb_array, ls))
end

ans += ans_C.min

p ans
