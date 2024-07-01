N = gets.to_i
As = gets.split.map(&:to_i)
ans = []
1.upto(N) { |i| ans.push(As.index(i) + 1) }
puts ans.join ' '
