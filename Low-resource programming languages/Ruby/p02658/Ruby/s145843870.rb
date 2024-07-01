gets
a = gets.split(' ').map{|x|x.to_i}
p = 1
a.each do |x|
    p = 0 if x == 0
    p *= x if p < 1e18
end
puts p > 1e18 ? -1 : p