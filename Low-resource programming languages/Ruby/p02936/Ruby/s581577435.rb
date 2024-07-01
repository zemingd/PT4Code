n, q = gets.split.map(&:to_i)
ab = []
(n-1).times {|_x| ab << gets.split.map(&:to_i)}
ab.sort!
px =
  readlines.map do |i|
    i.chomp.split.map(&:to_i)
  end.to_a

ans = [0]*n
px.each do |pp,point|
  ans[pp-1]+=point
end

ab.each do |a,b|
  ans[b-1]+=ans[a-1]
end

puts ans.join(' ')