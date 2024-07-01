N,K,Q = gets.split.map(&:to_i)
A = readlines.map(&:to_i)

ans = Array.new(N, K-Q)
A.each {|a| ans[a-1] += 1 }
puts ans.map {|a| a > 0 ? 'Yes' : 'No' }
