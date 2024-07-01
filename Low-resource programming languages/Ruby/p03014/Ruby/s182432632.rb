h,w=gets.split(" ").map{|n|n.to_i}
grid = []
num_w = []
num_h = []
ans_w = []
ans_h = []
for i in 0..h-1
  grid[i] = gets.chomp.split("")
  num_w[i] = []
  num_h[i] = []
end
for i in 0..h-1
 c = 0
 for j in 0..w-1
   if grid[i][j] == "#" then
     for k in c..j-1
       num_w[i][k] = j-1-c+1
     end
     c=j+1
     num_w[i][j] = 0
   elsif j == w-1 then
     for k in c..j
       num_w[i][k] = j-c+1
     end
   end
  end
  ans_w[i] = num_w[i].sort[-1]
 end
for j in 0..w-1
 c = 0
 for i in 0..h-1
   if grid[i][j] == "#" then
     for k in c..i-1
       num_h[k][j] = i-1-c+1
     end
     c=i+1
     num_h[i][j] = 0
   elsif i == h-1 then
     for k in c..i
       num_h[k][j] = i-c+1
     end
   end
  end
  ans_h[j] = num_h[j].sort[-1]
 end
puts ans_w.sort[-1]+ans_h.sort[-1]-1