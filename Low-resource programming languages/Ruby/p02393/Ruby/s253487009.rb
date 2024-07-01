a = Array.new(3)
a[0],a[1],a[2] = gets.chomp.split(' ').map(&:to_i)
a.sort
puts a.join(' ')  