=begin
－－－－－－－－－－－－－－
  n = 入力値
  num = nの奇数のみ配列
  cnt = 約数の個数
  ans[] =  奇数かつ約数が"ちょうど8個"ある整数を格納
－－－－－－－－－－－－－－
  1: 1 ~ n までを繰り返す(i)
  2: i が奇数の場合、iの約数を数える
  3: i の約数が"ちょうど8個"の場合のみ ans に代入
  4: ansの要素数を出力
=end

def cnt_divisor(num)
  cnt = 1;
  for i in 2..num do
    cnt += 1 if num % i == 0
  end
  return cnt
end

n = gets.to_i;
ans = [];

for num in 1..n do
  ans << num if cnt_divisor(num) == 8 && num % 2 != 0;
end

puts ans.size;