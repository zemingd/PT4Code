N = gets.to_i
a = gets.split.map(&:to_i)

sa = 0

(N/2).times{|i|
  sa += a[i] - a[N-i-1]
}

saex1 = sa
saex2 = sa

#きすうのとき
if N%2==1 then
  saex1 -= a[N/2]
  saex2 += a[N/2]
end

#puts saex1,saex2,""

#
idx1 = N/2-1
idx2 = N-(N/2)

(N/2-1).times{|i|
  saex1 -= a[idx1]*2
  saex2 += a[idx2]*2
  idx1-=1
  idx2+=1
  sa = saex1 if sa.abs>saex1.abs
  sa = saex2 if sa.abs>saex2.abs 
  #puts saex1,saex2,""
}

puts sa.abs
#puts satmp
