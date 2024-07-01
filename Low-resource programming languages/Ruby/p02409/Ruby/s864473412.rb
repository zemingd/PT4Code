arr = Array.new(4){ Array.new(3){ Array.new(10,0) } }
n = gets.to_i
n.times do
  b, f, r, v= gets.split.map(&:to_i)
  arr[b-1][f-1][r-1] += v
end
 
for i in 0...4
  puts "#"*20 if i>0
  for j in 0...3
    puts " "+h[i][j].join(" ")     
  end
end
