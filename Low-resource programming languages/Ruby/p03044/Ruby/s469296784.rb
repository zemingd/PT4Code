n = gets.to_i
g = Array.new(n).map{Array.new}
(n-1).times do
  s = gets.split.map(&:to_i)
  g[s[0]-1] << [s[1],s[2]]
  g[s[1]-1] << [s[0],s[2]]
end
ans = Array.new(n,nil)
ans[0] = 0
queue = [1]
while queue.size > 0
  g[queue[0]-1].each do |k|
    if ans[k[0]-1] == nil
      queue << k[0]
      ans[k[0]-1] = ans[queue[0]-1] + k[1]
    end
  end
  queue.shift
end
puts ans.map{|i|i%2}