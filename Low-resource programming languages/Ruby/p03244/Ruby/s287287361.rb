#方針: 最頻値に揃える
n = gets.to_i
v = gets.split
even = v.select.with_index{|v, i| i.even?}
odd = v.select.with_index{|v, i| i.odd?}

odd2 = odd.group_by{|v| v}.sort_by{|key, value| value.size}.reverse
even2 = even.group_by{|v| v}.sort_by{|key, value| value.size}.reverse

#全部一緒ならn/2を出力
#最頻値が異なるなら素直に出力
if odd2[0]!=even2[0]
  p n/2-odd2[0][1].size + n/2-even2[0][1].size
elsif odd2==even2
  p n/2
else
  #最頻値が同じなら二番目に多いやつに切り替え
  ans1, ans2 = 1<<30, 1<<30
  if odd2[1]
    ans1 = n/2-odd2[1][1].size + n/2-even2[0][1].size
  end

  if even2[1]
    ans2 = n/2-odd2[0][1].size + n/2-even2[1][1].size
  end

  p [ans1,ans2].min
end