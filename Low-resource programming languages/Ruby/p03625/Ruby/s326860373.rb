gets.to_i
an = gets.split.map(&:to_i)

ans = an.select{|i| an.count(i) > 1}.uniq.sort{|a, b| b<=>a}

if ans.size < 2
  puts 0
else
  puts ans[0] * ans[1]
end