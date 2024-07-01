input = gets.chop!.split.map{|n| n.to_i}
n, x = input[0], input[1]

mi = []
(1..n).each do
  mi.append(gets.chop!.to_i)
end

mi.each do |m|
  x -= m
end

num = x / mi.min
puts num+n