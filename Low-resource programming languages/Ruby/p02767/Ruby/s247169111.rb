n = gets.to_i
x = gets.split(" ").map(&:to_i)
l = 0
ave = (x.inject(:+)/n.to_f).round

x.each do |i|
  l += (i-ave)*(i-ave)
end

print(l)