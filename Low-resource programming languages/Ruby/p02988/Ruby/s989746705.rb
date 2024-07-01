n = gets.to_i
a = gets.strip.split(' ').map(&:to_i)
count = 0
(n-2).times do |i|
  count += 1 if a[i+1] > a[i] && a[i+1] < a[i+2]
  count += 1 if a[i+1] < a[i] && a[i+1] > a[i+2]
end
puts count
