n, k = gets.split(' ').map{|a|a.to_i}
s = gets.to_s.chomp

# que に "0が連続する数", "1が連続する数" を格納
list_01 = []
counter = ''
s.chars.each do | c |
  if counter == ''
    counter = c
    next
  end

  if counter[0] == c
    counter = counter + c
  else
    list_01 << {s: counter.size, f: counter[0].to_i}
    counter = c
  end
end
list_01 << {s: counter.size, f: counter[0].to_i} if counter.size > 0

# 累積和を算出
list_01.each_with_index do | e01, i |
  if i != 0
    list_01[i][:s] += list_01[i-1][:s]
  end
end
list_01.unshift({s: 0, f: nil})

max = 0
1.upto(list_01.size-1) do | ind |
  sum = 0
  if list_01[ind][:f] == 0
    st = ind
    st -= 1 if ind > 1
    en = ind+2*k
    en = list_01.size-1 if en > list_01.size-1
    sum = list_01[en][:s] - list_01[st-1][:s]
  else # == 1
    en = ind+2*k+1
    en = list_01.size-1 if en > list_01.size-1
    sum = list_01[en][:s] - list_01[ind-1][:s]
  end
  max = sum if sum > max
end
p max