n = gets.to_s.to_i
a = gets.to_s.split.map{|i| i.to_i }

ans = [0] * (n + 1)

a.each{|t| ans[t] += 1 }
ans.shift

p *ans