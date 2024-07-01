a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0

#500円玉の枚数分、支払い方がある
(a + 1).times do |i|
  d = x - 500 * i
  #100円玉の枚数分さらに分けられる
  (b + 1).times do |j|
    e = d - 100*j unless d < 0
    count += 1 if e/50 <= c 
  end
end

  