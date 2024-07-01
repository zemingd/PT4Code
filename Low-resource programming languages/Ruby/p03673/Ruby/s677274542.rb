N = gets.to_i
A = gets.split.map(&:to_i)

ans = []
N.times {|i| (ans << A[i]).reverse! }
puts ans.join(' ')