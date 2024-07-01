n, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
(k...n).each do |i|
  puts a[i] > a[i-k] ? "Yes" : "No"
end