#末尾の数字と読み方を定義
hon = [2,4,5,7,9]
pon = [0,1,6,8]
bon = 3

#標準入力の下一桁を取得
a = (gets.to_i) % 10

#標準入力の下一桁がhon,bon,ponのどれに含まれる確認
if a == bon
  puts "bon"
elsif hon.include?(a)
  puts "hon"
elsif pon.include?(a)
  puts "pon"
end