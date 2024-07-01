A, B = gets.chop.split.map(&:to_i)
x = (A / 0.08).floor
y = (B / 0.10).floor
ans = -1
#puts "#{x} #{y}"
[*[x.to_i, y.to_i].min..10000].each do |price|
  ans = price if price == x
end
puts ans
