A,B = gets.chomp.split(" ").map(&:to_i)
arr = [A,B]
N = arr.max
arr[arr.index(arr.max)] -= 1
K =  N + arr.max
puts K