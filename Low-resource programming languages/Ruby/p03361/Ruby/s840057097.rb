h,w = gets.chomp.split(" ").map(&:to_i)
s = h.times.map{"."+gets.chomp+"."}.unshift("."*(w+2)).push("."*(w+2))
disp =[[1,0],[-1,0],[0,1],[0,-1]]
for i in 1..h
  for j in 1..w
    if s[i][j] == "#"
      temp = 0
      disp.each do |k,l|
        if s[i+k][j+l] == "#"
          temp += 1
        end
      end
      if temp == 0
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"