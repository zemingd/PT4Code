require 'bigdecimal'
foods = []
5.times do
  foods << gets.chomp.to_i
end
sum = 0
min = 10
foods.each do |food|
    sum += BigDecimal(food.to_s).ceil(-1).to_i
    if food%10 != 0 && food%10 < min
        min = food%10
    end
end
if min == 10 then min = 0 end
puts sum - 10+min