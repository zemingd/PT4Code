n,m=gets.split.map &:to_i
ary=[]
m.times do
  ary<<gets.split.map(&:to_i)
end
cnt,res=0,0
(1..n).each do |j|
  (0..m-1).each do |i|
    cnt+=1 if [ary[i][0]..ary[i][1]].bsearch {|w| w.include?(j)}
  end
  if cnt == m
    res +=1
  end
  cnt =0
end
puts res