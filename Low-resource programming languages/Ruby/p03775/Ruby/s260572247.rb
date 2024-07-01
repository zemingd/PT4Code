=begin
  －－－－－－－－－－－－－－
  n = 入力値
  ans = 最小桁数
  a = 'n % a == 0' が成り立つ整数
  b = 上記 a が成り立った時の 'n / a' の結果
  max = a と b を比べた時の大きい方の桁数
  －－－－－－－－－－－－－－
  －tips－－－－－－－－－－－
  ● n = a * b を満たす場合、a と b は共に n の約数になる
  ● n を a で割って割り切れる数値の桁数のカウントをする。しかし、a を全列挙すれば O(N)となりTLEするので
    ◯ N = a*b = b*a (例 10 = 2*5 = 5*2 (交換法則)) より、A は √N まで調べれば 解が導き出せる
    　(例題だと 2*5 まで調べれば 5*2 から一緒なので調べなくて良い)
  －－－－－－－－－－－－－－

  1: 桁数をカウントするメソッドを作成する
    メソッド(num)－－－－－－－
      num > 0 の場合
        桁数を +1 する
        num / 10 を返す
      num が 0 になったらカウントした桁数を返す
    －－－－－－－－－－－－－－
  2: n の桁数をカウントして ansに代入する
  3: a = 1 とし a*a <= n の限り a+1 で繰り返す
    3.1: n % a == 0 の場合
      3.1.1: b = n / a に代入
      3.1.2: a と b の桁数をカウントし、大きい方の値を max に代入
      3.1.3: ans > max なら ans = max に代入
    3.2 0 でない場合は3:に戻る
  4: ans を出力
=end

def cnt_dig(num)
  cnt = 0
  while (num > 0)
    cnt += 1
    num /= 10
  end
  return cnt
end

n = gets.to_i
ans = cnt_dig(n)
a = 1
while(a*a <= n)
  unless n % a == 0
    a += 1
    next
  end
  b = n / a
  max = [cnt_dig(a),cnt_dig(b)].max
  ans = max if ans > max
  a += 1
end

puts ans