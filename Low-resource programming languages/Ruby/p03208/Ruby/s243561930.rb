n, k = gets.chomp.split.map(&:to_i)
a = []
n.times do |i|
  a[i] = gets.to_i
end

a.sort!.reverse!
min = 1e6

(n-k + 1).times do |i|
  min = a[i] - a[k+i-1] if a[i] - a[k+i-1] < min
end
puts min