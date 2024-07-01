input_line = gets.chomp.split(" ")
n = input_line[0].to_i
d = input_line[1].to_i
result = 0
mat = Array.new(n).map{Array.new(d,0)}
for i in 0 .. n-1
  input_line = gets.chomp.split(" ")
  for j in 0 .. d-1
    mat[i][j] = input_line[j].to_i
  end
  #p mat
end
#p mat
for i in 0 .. n-1
  for j in i+1..n-1
    dist = 0
    for k in 0 .. d-1
      dist += (mat[i][k] - mat[j][k])**2
    end
    dist = Math.sqrt(dist)
    if dist % 1 == 0 then
      #puts "yes"
      result += 1
    end
    #puts dist
  end
end
puts result