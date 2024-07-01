A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
#ここまで入力
ans = 0
a = 0 #500円玉の枚数
while a != A+1 do
  b = 0 #100円玉の枚数
  while b != B+1 do
    c = 0 #50円玉の枚数
    while c != C+1 do
      if((a*500+b*100+c*50)==X) #合計金額がXと合致したらansを1増やす
        ans += 1
      end
      c += 1
    end
    b += 1
  end
  a += 1
end
puts ans