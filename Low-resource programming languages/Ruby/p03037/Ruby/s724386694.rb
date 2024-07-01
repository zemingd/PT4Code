N,M=gets.chomp.split.map(&:to_i)
c=M.times.map { gets.split.map(&:to_i) }
a=(c[0][0]..c[0][-1]).to_a
(M-1).times do |i|
  i+=1
  b=((c[i].first)..(c[i].last)).to_a
  a=a & b
end
puts a.size