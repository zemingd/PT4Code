arr = [1,2,3,4,5]
arr_n = gets.chomp.split(' ').map(&:to_i)
arr = arr-arr_n
puts arr[0]