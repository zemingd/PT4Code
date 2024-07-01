n = gets.to_s
ans = n.gsub(/1/,'2')
ans2 = ans.gsub(/9/,'1')
ans3 = ans2.gsub(/2/,'9')


puts ans3
