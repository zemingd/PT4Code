N = gets.to_i
Alist = gets.split("\s").map {|s|s.to_i}
sum = 0
Alist.each do |d|
  sum += d-1
end
p sum