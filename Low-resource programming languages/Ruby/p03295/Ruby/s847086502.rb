n,m =  gets.chomp.split(" ").map(&:to_i)
a = m.times.map{gets.chomp.split(" ").map(&:to_i)}.sort_by{|i,j|j}.sort_by{|i,j|i}
ans = 0
minb = a[0][1]
for i in 1..m-1
  if minb > a[i][0]
    minb = [minb,a[i][1]].min
  else
    ans += 1
    minb = a[i][1]
  end
end
puts ans+1