n, x= gets.chomp.split.map(&:to_i)

mi = []
(1..n).each do
  mi.push(gets.chomp.to_i)
end

mi.each do |m|
  x -= m
end

num = x / mi.min
puts num+n