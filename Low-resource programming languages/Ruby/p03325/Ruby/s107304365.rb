def gets_can_div_2(a)
  count = 0
  while (a%2==0)
    count+=1
    a /= 2
  end
  count
end

N = gets.to_i
as = gets.split.map(&:to_i)
res =  as.map{|a| gets_can_div_2(a)}
sum = 0
res.each{|e|
  sum += e
}
puts sum
