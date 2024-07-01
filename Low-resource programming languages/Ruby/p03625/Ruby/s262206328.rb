gets.to_i
L = Hash.new{|h, k| h[k] = 0}
gets.chomp.split(" ").map(&:to_i).each{|a| L[a] += 1}

ans = L.select{|k, v| v >= 2}.keys.sort.reverse

if ans.size < 1 then
  puts 0
elsif L[ans[0]] >= 4 then
  puts ans[0] ** 2
elsif ans.size < 2 then
  puts 0
else
  puts ans[0] * ans[1]
end
