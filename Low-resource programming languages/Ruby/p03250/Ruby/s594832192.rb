a = gets.split.map(&:to_i).sort.reverse
p a[0]*10+a[1]+a[2]