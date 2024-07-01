n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

(0...(n - k)).each { |i|
  # i番目とk+i番目を比較
  puts a[i] < a[k + i] ? "Yes" : "No"
}