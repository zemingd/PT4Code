line = gets.split(' ').map(&:to_i)

L = line[0]
R = line[1]
Mod = 2019

min = 2020
flag = false
for i in L..(R-1) do
  for j in i+1..R do
    a = (i * j) % Mod
    if a < min then
      min = a
    end
    if a == 0 then
      flag = true
      break
    end
  end
  if flag then
    break
  end
end
      
print min