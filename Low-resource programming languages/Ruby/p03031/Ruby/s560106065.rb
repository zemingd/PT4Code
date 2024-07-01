N,M=gets.split.map(&:to_i)
ss=Array.new(N){Array.new}
M.times do |i|
  a=gets.split.map(&:to_i)[1..-1]
  a.each do |e|
    ss[e-1] << i
  end
end
ps=gets.split.map(&:to_i)
cnt=0
for i in 0...2**N
  con=Array.new(M,0)
  for j in 0...N
    if (i & (1 << j))!=0
      ss[j].each do |e|
        con[e]+=1
      end
    end
  end
  flag=true
  M.times do |j|
    flag=false if (con[j]%2)!=ps[j]
  end
  cnt+=1 if flag
end
puts cnt
