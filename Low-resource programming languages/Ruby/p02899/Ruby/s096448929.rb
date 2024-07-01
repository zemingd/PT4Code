n = gets.chomp.to_i
a = []
a = gets.chomp.split.map(&:to_i)

ans = []
a.each.with_index(1) do |t, i|
  ans[t-1] = i
end
puts ans.join(' ')
