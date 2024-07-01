n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
for i in k...n do
  puts a[i - k] < a[i] ? "Yes" : "No"
end
