a = gets.split(" ").map(&:to_i)
result = 0
a.sort!.each_with_index do |n, i|
  next if i == 0
  result +=n - a[i-1]
end
puts result