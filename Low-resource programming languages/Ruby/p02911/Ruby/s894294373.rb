n, k, q = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(n, 0)

q.times do |i|
  a = gets.chomp.to_i - 1
  arr[a] += 1
end

arr.each do |i|
  q - i < k ? puts('Yes') : puts('No')
end
