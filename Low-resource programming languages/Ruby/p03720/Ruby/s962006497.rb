n,m = gets.split.map(&:to_i)
roads = Array.new(n,0)
m.times do
    a,b = gets.split.map(&:to_i)
    roads[a-1]+=1
    roads[b-1]+=1
end
roads.each{|r|puts r}