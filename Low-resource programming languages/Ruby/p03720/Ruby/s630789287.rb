n,m = gets.chomp.split.map(&:to_i)
rs = m.times.map{gets.chomp.split.map(&:to_i)}
ans=[]
1.upto(n) do |i|
  cnt = 0
  rs.each {|r|cnt += r.count{|k| k == i}}
  ans.push(cnt)
end
puts ans
