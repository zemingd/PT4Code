s = gets.chomp!
n = s.size
ans = 0
(n/2).times {|i| ans+=2**(2*i+1)}
ans = ans.to_s(2)
cnt = 0
n.times{|i| cnt += 1 if ans[i]!=s[i]}
puts cnt > (n-cnt) ? n-cnt : cnt