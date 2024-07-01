N=gets.to_i
temp=N.times.map{gets.split.map(&:to_i)}.transpose.map{|t|t.map.with_index{|e,i|[e,i]}}
temp[1].sort!{|a,b|a[0]<=>b[0]}
cnt="Yes"
fc,lc =0,0
N.times do |i|
  fc+=temp[0][temp[1][i][1]][0]
  lc+=temp[1][i][0]
  cnt="No" if lc<=fc
end
