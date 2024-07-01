n, k = $stdin.readline.split.map(&:to_i)

arr = $stdin.readlines.map(&:to_i).sort

puts (0..(n-k)).map {|i|
  (arr[i]-arr[i+k-1]).abs
}.min