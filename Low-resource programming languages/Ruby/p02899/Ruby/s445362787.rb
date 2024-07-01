n = gets.to_i
a = gets.split(" ").map(&:to_i)
ans = Array.new(n)
a.each_with_index {|a, i| ans[a-1] = i+1 }
puts ans.join(' ')
