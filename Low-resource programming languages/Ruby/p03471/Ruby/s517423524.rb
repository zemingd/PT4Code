money_num, money_sum = gets.chomp.split(' ').map(&:to_i)
itiman_ans = -1
gosen_ans = -1
sen_ans = -1
for itiman in 0..money_num do
  for gosen in 0..(money_num - itiman) do
    sen = money_num - itiman - gosen
    total = itiman*10000 + gosen*5000 + sen*1000
    if total == money_sum then
      itiman_ans, gosen_ans, sen_ans = [itiman, gosen, sen]
    end
  end
end
puts "#{itiman_ans} #{gosen_ans} #{sen_ans}"