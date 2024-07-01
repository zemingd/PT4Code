=begin
－－－－－－－－－－－－－－
  n = 入力値
  A = n % i == 0 の時の i
  B = n % i == 0 の時の n / i の返り値
  max = AとBの桁数の大きい方
  ans = 最小桁数
－－－－－－－－－－－－－－
  1: 桁数をカウントするメソッド cnt_digits を作成
    1:num < 0 になるまでループ
      1.1: n / 10
      1.2: ループ回数をカウント
    2: ループ回数を返す
  2: n の桁数を ans に代入
  3: 1 ~ n をループ (i) (* n^10 のためループが間に合わない。そのため i*i が n を超えた時点で終了する)
    3.1: n % i == 0 場合
      3.1.1: B に n / i を代入
      3.1.2: A と B の桁数のうち大きい方を max に代入
      3.1.3: ans > max の場合、 ans に maxを代入
  4: ans を出力
=end

def cnt_digits(num)
  cnt = 0;
  while num > 0
    num /= 10;
    cnt += 1;
  end
  return cnt;
end

N = gets.to_i;
ans = cnt_digits(N);
i = 1;
a = 0;
b = 0;

while i*i <= N
  if N % i != 0
    i += 1;
    next
  end

  a = i;
  b = N / i;

  max = [cnt_digits(a), cnt_digits(b)].max;
  ans = max if ans > max;

  i += 1;
end
  
puts ans;
