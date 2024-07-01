Alist = gets.split("\s").map {|s|s.to_i}
Alist.sort!
sum = 0
2.times do |i|
  sum += Alist[i+1] - Alist[i]
end
p sum