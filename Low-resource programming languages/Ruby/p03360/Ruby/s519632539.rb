*arr, k = $stdin.read.split.map(&:to_i)
arr.sort!
arr[2] = arr[2] * 2 ** k
puts arr.inject(:+)