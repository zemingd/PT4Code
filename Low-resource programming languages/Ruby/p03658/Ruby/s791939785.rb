n,k = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i).sort.reverse
puts arr[0..(k-1)].sum
