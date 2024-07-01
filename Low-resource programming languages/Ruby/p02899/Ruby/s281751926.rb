N = gets.to_i
As = gets.split.map(&:to_i)
ans = []
As.each_with_index {|a,i| ans[a-1] = i + 1}
puts ans.join ' '
