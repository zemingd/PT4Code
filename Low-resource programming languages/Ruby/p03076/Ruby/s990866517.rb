dish = []
5.times do
  dish << gets.to_i
end

ary = dish.map{|x| x%10}.sort_by{|x| x}
ary.delete(0)
if a.lenght == 0
  min = 0
else
  min = 10-ary[0]
end

5.times do |i|
  dish[i] = ((dish[i]/10).to_i+1)*10 if dish[i]%10 != 0
end

print dish.inject(&:+)-min