n,x = gets.chomp.split.map(&:to_i)
m = n.times.map{gets.to_i}

donuts = m.sort

sum = 0
donuts.each do |donut|
  sum += donut
end

amari = x - sum

puts n + (amari / donuts[0])