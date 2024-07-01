n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(n-k).times do |i|
    puts a[i] < a[i+k] ? "Yes" : "No"
end