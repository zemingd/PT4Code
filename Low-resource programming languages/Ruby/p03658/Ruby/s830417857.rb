n, k = gets.split(' ').map(&:to_i)
l = gets.chomp.split(' ').map(&:to_i)

ans = 0
l_new = l.sort.reverse

ans = l_new[0..k-1].inject(:+)

puts ans