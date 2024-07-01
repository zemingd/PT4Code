a,b,c,k = gets.chomp.split(" ").map{|i|i.to_i}
sum = 0
rest = k
if rest >= a
  rest -= a
  sum = a
  if rest >= b
    rest -= b
    if rest > 0
      sum += -1*rest
    end
  end
else
  sum += rest*1
end
puts sum
      