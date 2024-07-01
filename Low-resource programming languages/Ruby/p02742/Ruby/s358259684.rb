h,w = gets.split(' ').map(&:to_i)
res = h*w
puts res.even? ? res/2 : res/2+1