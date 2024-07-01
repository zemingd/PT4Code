a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
 
count = 0
 
 
#500円玉の枚数分、支払い方がある
(a + 1).times do |i|
  #100円玉の枚数分さらに分けられる
  (b + 1).times do |j|
    rest = x - (500*i + 100*j) 
  if rest / 50 <= c
    count += 1
  end
end
puts count