n = gets.chomp.split
ans = [n[0]*n[1].to_i,n[1]*n[0].to_i]
ans.sort!
puts ans[0]
