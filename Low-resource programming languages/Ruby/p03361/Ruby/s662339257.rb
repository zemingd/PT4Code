a, b = gets.chomp.split(" ").map(&:to_i)
attrs = Array.new
while line = $stdin.gets
  attrs << line.split(//)
end
k = "Yes"
for i in 0..(a-1)
 for j in 0..(b-1)
  if ((i - 1) >= 0) and ((j-1) >= 0) and ((i+1) <= (a - 1)) and ((j + 1) <= (b - 1))
   if (attrs[i][j] == "#") and  (attrs[i-1][j] == ".") and  (attrs[i+1][j] == ".") and  (attrs[i][j-1] == ".") and  (attrs[i][j+1] == ".") 
    k = "No"
   end
 elsif ((i - 1) < 0) and ((j-1) >= 0) and ((i+1) <= (a - 1)) and ((j + 1) <= (b - 1))
   if (attrs[i][j] == "#") and  (attrs[i+1][j] == ".") and  (attrs[i][j-1] == ".") and  (attrs[i][j+1] == ".") 
    k = "No"
   end
elsif ((i - 1) >= 0) and ((j-1) < 0) and ((i+1) <= (a - 1)) and ((j + 1) <= (b - 1))
   if (attrs[i][j] == "#") and  (attrs[i-1][j] == ".") and  (attrs[i+1][j] == ".") and    (attrs[i][j+1] == ".") 
    k = "No"
   end
elsif ((i - 1) >= 0) and ((j-1) >= 0) and ((i+1) > (a - 1)) and ((j + 1) <= (b - 1))
   if (attrs[i][j] == "#") and  (attrs[i-1][j] == ".") and  (attrs[i][j-1] == ".") and  (attrs[i][j+1] == ".") 
    k = "No"
   end
elsif ((i - 1) >= 0) and ((j-1) >= 0) and ((i+1) <= (a - 1)) and ((j + 1) > (b - 1))
   if (attrs[i][j] == "#") and  (attrs[i-1][j] == ".") and  (attrs[i+1][j] == ".") and  (attrs[i][j-1] == ".") 
    k = "No"
   end
 end
end
end
puts k