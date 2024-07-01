_,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

# 総投票数
sum = 0
a.each do |x|
  sum += x
end


# 人気商品を選ぶ
rate = 1 / (4 * m).to_f

border = rate * sum

goods = a.sort.reverse

ninki = goods.take(m)

# こたえ
kotae = 0
ninki.each do |g|
  if g > border
    kotae += 1
  end
end

if kotae >= m
  puts "Yes"
else
  puts "No"
end