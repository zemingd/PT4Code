n,m = gets.chomp.split(' ').map{|n| n.to_i}
route = Array.new(m)
ans = Array.new(n, 0)

m.times do |r|
  a,b = gets.chomp.split(' ').map{|n| n.to_i}
  route[r] =  [a,b]
end

route.each do |r|
  (0..1).each do |i|
    ans[r[i] - 1] += 1
  end
end

puts ans