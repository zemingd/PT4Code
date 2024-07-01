n, k = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)

(n - k).times do |i|
  puts arr[i] < arr[i + k] ? "Yes" : "No"
end
