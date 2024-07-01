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
enxts = eventree[1].collect{|i| [1,i]} 
onxts = oddtree[1].collect{|i| [1,i]}
while true
  if enxts.size > 0
    prev, now = enxts.shift
    color[now] = color[prev]
    enxts = enxts + eventree[now].select{|i| color[i] == 2}.collect{|i| [now, i]}
    onxts = onxts + oddtree[now].select{|i| color[i] == 2}.collect{|i| [now, i]}
  elsif onxts.size > 0
    prev, now = onxts.shift
    color[now] = 1 - color[prev]
    enxts = enxts + eventree[now].select{|i| color[i] == 2}.collect{|i| [now, i]}
    onxts = onxts + oddtree[now].select{|i| color[i] == 2}.collect{|i| [now, i]}
  else
    break
  end
end
  
puts color[1..N]