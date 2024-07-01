n = gets.to_i
ary = gets.strip.split.map(&:to_i)
odd = []
even = []
n.times do |i|
  if i%2==0
    odd << ary[i]
  else
    even << ary[i]
  end
end
rec1 = Array.new(10**5,0)
rec2 = Array.new(10**5,0)
n/2.times do |i|
  rec1[odd[i]-1] += 1
end
n/2.times do |i|
  rec2[even[i]-1] += 1
end
recs1 = rec1.sort
recs2 = rec2.sort
if rec1.count(recs1[-1])==1 && rec2.count(recs2[-1])==1
  if rec1.index(recs1[-1]) == rec2.index(recs2[-1])
    puts [n-recs1[-2]-recs2[-1],n-recs1[-1]-recs2[-2]].min
  else
    puts n-recs1[-1]-recs2[-1]
  end
else
  puts n-recs1[-1]-recs2[-1]
end