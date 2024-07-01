array = Array.new(4).map{Array.new(3).map{Array.new(10,0)}}
n = gets.to_i
n.times do
   b,f,r,v = gets.split(" ").map(&:to_i)
   array[b-1][f-1][r-1] += v
   if v < 0
       array[b-1][f-1][r-1] -= v
   end
end
i = 0
while i < 3
j = 0
    while j < 3
        puts array[i][j].join(" ")
        j += 1
    end
   puts "#"*20
   i+=1
end

for k in 0..2 
    puts array[3][k].join(" ")
end