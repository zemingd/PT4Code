input = gets.chop!.split.map{|n| n.to_i}
n, x = input[0], input[1]

mi = []
for i in 1..n do
  mi.append(gets.chop!.to_i)
end

mi.each do |n|
  x -= n
end

num = (x / mi.min).to_i
puts num+n