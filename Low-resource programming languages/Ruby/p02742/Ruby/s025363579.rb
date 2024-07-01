h,w = gets.chomp.split.map(&:to_i)
ans = (h/2 + h%2) * (w/2 + w%2)
ans += (h/2) * (w/2)
puts ans