n = gets.chop.to_i
v = gets.chop.split.map(&:to_i)

odd = v.each_slice(2).map{|n| n.first}
even = v.each_slice(2).map{|n| n.last}

ans = 0

if v.group_by{|x| x}.first.last.size == n
  p n/2
else
  odd = odd.group_by{|x| x}
  even= even.group_by{|x| x}

  if odd.first.first != even.first.first
    ans += odd.size - odd.group_by{|x| x}.first.last.size
    ans += even.size - even.group_by{|x| x}.first.last.size
    p ans
  else
    if odd.first.last.size > even.first.last.size
      ans += n/2 - odd.first.last.size
      even.delete(even.first.first)
      ans += n/2 - even.first.last.size
    else
      ans += n/2 - even.first.last.size
      odd.delete(odd.first.first)
      ans += n/2 - odd.first.last.size
    end
    p ans
  end
end
