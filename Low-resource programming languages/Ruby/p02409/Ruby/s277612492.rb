h = Array.new(4){ Array.new(3){ Array.new(10,0) } }
n = gets.to_i
n.times do
  a,b,c,d = gets.split.map(&:to_i)
  h[a-1][b-1][c-1] += d
end

for i in 0...4
  puts "#"*20 if i>0
  for j in 0...3
    puts " "+h[i][j].join(" ")     
  end
end