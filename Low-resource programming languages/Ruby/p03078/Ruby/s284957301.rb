x,y,z,k = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort.reverse
bs = gets.chomp.split.map(&:to_i).sort.reverse
cs = gets.chomp.split.map(&:to_i).sort.reverse
ans = []
que = [[0,0,0,as[0] + bs[0] + cs[0]]]
while ans.size != k
  l,m,n,sum = que.pop
  ans << sum
  que << [l+1,m,n,as[l+1]+bs[m]+cs[n]] if l+1 < x 
  que << [l,m+1,n,as[l]+bs[m+1]+cs[n]] if m+1 < y
  que << [l,m,n+1,as[l]+bs[m]+cs[n+1]] if n+1 < z
  que.sort_by!(&:last).uniq!
end
ans.each do |i|
  puts i
end