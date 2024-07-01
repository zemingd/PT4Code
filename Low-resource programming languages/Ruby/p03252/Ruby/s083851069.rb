require 'pp'
# Yes No Yes

s = gets.chomp.chars
t = gets.chomp.chars
ss = s.group_by{|x|x}.map{|k,v|[v.size]}.sort_by{|a|a[0]}
tt = t.group_by{|x|x}.map{|k,v|[v.size]}.sort_by{|a|a[0]}
puts ss == tt ? 'Yes' : 'No'
