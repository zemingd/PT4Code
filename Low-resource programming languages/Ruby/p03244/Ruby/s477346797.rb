#方針: 最頻値に揃える
n = gets.to_i
v = gets.split

odd = v.select.with_index{|v, i| i.odd?}
even = v.select.with_index{|v, i| i.even?}

odd2 = odd.group_by{|v| v}.sort_by{|key, value| value.size}.reverse
even2 = even.group_by{|v| v}.sort_by{|key, value| value.size}.reverse

if odd2[0]!=even2[0]
  #最頻値が異なるなら素直に出力
  p n/2-odd2[0][1].size + n/2-even2[0][1].size
else
  #最頻値が同じなら二番目に多いやつに切り替え
  ans1, ans2 = n/2, n/2
  ans1 = n/2-odd2[1][1].size + n/2-even2[0][1].size if odd2[1]
  ans2 = n/2-odd2[0][1].size + n/2-even2[1][1].size if even2[1]
  p [ans1,ans2].min
end