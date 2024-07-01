coin500 = gets.chomp.to_i # 500
coin100 = gets.chomp.to_i # 100
coin50 = gets.chomp.to_i # 50
price = gets.chomp.to_i
count = 0

c500 = 0
c100 = 0
c50 = 0
while c500 <= coin500
  c100 = 0
  while c100 <= coin100
    c50 = 0
    while c50 <= coin50
      if (c500 * 500) + (c100 * 100) + (c50 * 50) == price
        p "500:#{c500} 100:#{c100} 50:#{c50}"
        count += 1
      end
      c50 += 1
    end
    c100 += 1
  end
  c500 += 1
end

puts count
