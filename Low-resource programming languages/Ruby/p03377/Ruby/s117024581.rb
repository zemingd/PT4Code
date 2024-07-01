i = gets.chomp.split("\s").map{|e| e.to_i}
A = i[0]
B = i[1]
X = i[2]
if (A + B - X >= 0) && (X - A >= 0)
  print("Yes")
else
  print("No")
end