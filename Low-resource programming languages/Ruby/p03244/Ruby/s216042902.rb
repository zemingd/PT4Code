#方針: 最頻値に揃える
n = gets.to_i
v = gets.split
even = v.select.with_index{|v, i| i.even?}
odd = v.select.with_index{|v, i| i.odd?}
  
p odd2 = odd.group_by{|v| v}.sort_by{|key, value| value.size}.reverse
p even2 = even.group_by{|v| v}.sort_by{|key, value| value.size}.reverse
  
if odd2[0]!=even2[0]
  p n/2-odd2[0][1].size + n/2-even2[0][1].size
end