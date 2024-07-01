N, K, Q = gets.split.map(&:to_i)
arr = Array.new(N, 0)
Q.times do |i|
  a = gets.to_i
  arr[a-1] += 1
end
arr.each do |n|
  puts n > (Q - K) ? 'Yes' : 'No'
end