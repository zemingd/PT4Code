N = gets.to_i
A = gets.split.map(&:to_i)

ans = [[],[]]
N.times {|i| ans[i%2] << A[i] }
ans[0].reverse!
puts ans.flatten.join(' ')