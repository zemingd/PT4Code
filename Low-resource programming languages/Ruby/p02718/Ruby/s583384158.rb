_,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

# 総投票数
sum = 0
a.each do |x|
  sum += x
end

# 人気商品を選ぶ
goods = a.sort.reverse

vote = sum / (4 * m)

ninki = goods.take(m)

# こたえ
kotae = 0
ninki.each do |g|
  if g >= vote
    kotae += 1
  end
end

if kotae >= m
  puts "Yes"
else
  puts "No"
end