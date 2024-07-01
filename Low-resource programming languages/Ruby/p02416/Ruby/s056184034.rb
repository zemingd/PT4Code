=begin
  1, num > 0 で処理開始
    1.1 num % 10 の結果を ans に足す
    1.2 num /= 10 をする
  2, 1 に戻る
=end

while (num = gets.to_i) != 0
  ans = 0
  while num > 0
    ans += num % 10
    num /= 10
  end
  puts ans
end
