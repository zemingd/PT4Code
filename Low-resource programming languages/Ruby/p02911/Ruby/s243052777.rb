N, K, Q = gets.split.map(&:to_i)
arr = Q.times.map { gets.to_i }
1.upto(N) do |n|
  puts arr.count(n) > (Q - K) ? 'Yes' : 'No'
end