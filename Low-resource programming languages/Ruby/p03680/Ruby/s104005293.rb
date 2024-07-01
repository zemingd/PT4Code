n = gets.to_i
a = Array.new
n.times do
 a << gets.to_i    
end 
turn = 0; p = -1 ;now = 1
n.times do
  turn += 1
  now = a[now-1]
  if now==2
    p = turn
    break
  end
end
puts p