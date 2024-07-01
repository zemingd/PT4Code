input = Array.new(3)
i = 0;
while i < input.length
  input[i] = gets.chomp.to_i
  i+=1;
end
si = input.sort
res = 0
res += si[1]-si[0]
res += si[2]-si[1]
p res
