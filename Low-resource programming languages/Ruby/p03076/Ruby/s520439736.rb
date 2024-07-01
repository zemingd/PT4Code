as = 5.times.map{gets.to_i}.sort_by{|a| (a-1)%10}
sum = as[0]
(1..4).each do |i|
    sum += (as[i]+9)/10*10
end
puts sum