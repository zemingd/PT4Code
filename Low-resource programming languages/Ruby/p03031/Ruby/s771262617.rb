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
    if i & (1 << j)
      ss[j].each do |e|
        con[e]+=1
      end
    end
  end
  cnt+=1 if con.all?.with_index{|e,k|e%2==ps[k]}
end
puts cnt