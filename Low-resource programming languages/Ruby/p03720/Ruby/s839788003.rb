n, m = gets.split.map(&:to_i)
roads = []
m.times do 
  roads << gets.split.map(&:to_i)
end
ans = Array.new(n, 0)
roads.each do |i|
  i.each do |k|
    ans[k-1]+=1
  end
end
puts ans