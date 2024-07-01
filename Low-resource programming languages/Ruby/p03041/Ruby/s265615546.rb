a = gets.split
b = a[1].to_i - 1
ans = gets
puts ans.tr(ans[b],ans[b].downcase)