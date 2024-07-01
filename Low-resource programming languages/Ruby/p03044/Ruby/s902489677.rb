N = gets.to_i
 
oddtree = Array.new(N+1){Array.new}
eventree = Array.new(N+1){Array.new}
color = Array.new(N+1, 2)
(N-1).times do
  a, b, c = gets.split(' ').map(&:to_i)
  if c%2 == 0
    eventree[a].push(b)
    eventree[b].push(a)
  else
    oddtree[a].push(b)
    oddtree[b].push(a)
  end
end
 
color[1] = 0
nxts = (eventree[1] + oddtree[1]).collect{|i| [1,i]} 
while nxts.size > 0
  prev, now = nxts.shift
  if eventree[prev].include?(now)
    color[now] = color[prev]
  else
    color[now] = (color[prev]+1)%2
  end
  nxts = nxts + ((eventree[now] + oddtree[now]).select{|i| color[i] == 2}.collect{|i| [now,i]} )
end
  
puts color[1..N]