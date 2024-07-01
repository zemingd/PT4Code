n = gets.chomp.to_i
x = []
flag = 1
n.times do |i|
  x[i]= (gets.chomp)
end
n.times do |j|
  n.times do |k|
    if x[j] = x[k]
      flag = 0
      break
    end
  end
  if x[j].slice(-1) != x[j+1].slice(1)
    flag = 0
    break
  end
end
if flag == 0
  p 'No'
else
  p 'Yes'
end
