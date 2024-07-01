n, k = gets.split(' ').map{|a|a.to_i}
s = gets.to_s.chomp

# que に "0が連続する数", "1が連続する数" を格納
#   s: 累積和を格納
#   f: 0 or 1 を格納
list_01 = [{s: 0, f: nil}]
counter = ''
s.chars.each do | c |
  if counter == ''
    counter = c
    next
  end
  if counter[0] == c
    counter = counter + c
  else
    list_01 << {s: counter.size + list_01[-1][:s], f: counter[0].to_i}
    counter = c
  end
end
list_01 << {s: counter.size + list_01[-1][:s], f: counter[0].to_i} if counter.size > 0

p list_01

# 累積和からMaxを算出する
#   起点の f: 0 or 1 により index の start, width が変わる.
max = 0
1.upto(list_01.size-1) do | ind |
  sum, st, wi = 0, 0, 0
  if list_01[ind][:f] == 0
    st = ind
    wi = 2*k
    if ind > 1
      st -= 1
    else
      wi -= 1
    end
  else # == 1
    st = ind
    wi = 2*k
  end
  if st + wi > list_01.size-1
    wi = list_01.size-1-st
  end
  sum = list_01[st+wi][:s] - list_01[st-1][:s]
  p "#{st}, #{wi}, #{sum}"
  max = sum if sum > max
end
p max