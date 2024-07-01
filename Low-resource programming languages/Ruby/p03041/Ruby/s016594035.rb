N, K = gets.split.map(&:to_i)
S = gets
arr = S.split('')
arr[K-1] = arr[K-1].downcase
puts arr.join()