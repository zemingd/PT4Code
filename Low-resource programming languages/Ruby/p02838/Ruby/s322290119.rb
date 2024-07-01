N = gets.chomp.to_i

p = Hash.new(0)
q = Hash.new(0)

A = gets.chomp.split.map(&:to_i)

max_A = A.max
l = max_A.to_s(2).length

N.times do |i|
  num = A[i]

  1.upto(l) do |d|
    if num % 2 != 0
      p[d] += 1
    else
      # 0のとき
      q[d] += 1
    end

    num /= 2
  end
end

ans = 0
MOD = 10**9 + 7

def pow(base,exponent)
  raise ArgumentError if exponent < 0
  # 指数が0の時は結果は1です
  return 1 if exponent==0
  # 結果が出る変数を用意
  result = 1
  # 指数が1なら終了
  while exponent != 1 do
    # 指数が奇数の時、その時の底はここでresultに掛けてしまい、指数を一つ減らす
    if exponent.odd? then
      result *= base
      exponent -= 1
    end
    # 指数を2で割る
    exponent /= 2
    # 底の2乗を新たな底とする
    base *= base
    base = base % MOD
    # 繰り返す
  end
  result *= base
  # 結果を返す
  return result % MOD
end

1.upto(l) do |i|
  ans += p[i] * q[i] * pow(2,i-1)
  ans %= MOD
end

p ans
