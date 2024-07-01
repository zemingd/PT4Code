N, K, Q = gets.chomp.split(" ").map(&:to_i)
A = Array.new(N + 1, K - Q)
Q.times{
  A[gets.to_i] += 1
}

A.shift
A.each{|a|
  puts a > 0 ? 'Yes' : 'No'
}
