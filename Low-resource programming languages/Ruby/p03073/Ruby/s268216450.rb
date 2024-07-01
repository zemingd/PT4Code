s = gets.chomp.split('').map(&:to_i)
ans = [0,0]
s.each.with_index{|c,i|ans[i%2^s[i]] += 1}
p ans.min