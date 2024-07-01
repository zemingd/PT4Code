def oneweek(debt) #debt * 1000?????¬??\?????????
   (debt * 1.05).ceil
end

num = gets.to_i
debt = 100
num.times do
   debt = oneweek(debt)
end
puts debt * 1000