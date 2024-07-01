# 入力
n = gets.to_i
i = 0
# nに近い数（n以下の最大の数）から平方根を求めて、整数だったものを見つける
n.times{|i|
# 整数に変換したもの＝平方根　（ルートならfalseになりtimesで次の動作へ）
  if Math::sqrt(n-i).to_i == Math::sqrt(n-i)
    puts n-i
    break
  end
  i += 1
  }