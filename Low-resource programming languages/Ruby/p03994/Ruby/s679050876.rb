s = gets.chop
k = gets.to_i


i=0
while (k > 0) && (i < s.size)
  d = "z".ord - s[i].ord + 1
  if k >= d
    k -= d
    s[i] = "a"
  end
  i += 1
end


s[-1] = (((s[-1].ord + k - "a".ord) % 26) + "a".ord).chr
puts s
