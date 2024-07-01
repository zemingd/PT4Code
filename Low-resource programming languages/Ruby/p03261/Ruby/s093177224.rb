n = gets.chomp.to_i
x = []
flag = 1
n.times do |i|
  x[i]= (gets.chomp)
end
n.times do |j|
  (j+1).step(n) do |k|
    if x[j] == x[k] 
      flag = 0
      break
    end
  end
end
0.step(n-2) do |l|
  c = x[l].to_s.slice(-1)
  d = x[l+1].to_s.chr
  if c != d
    flag = 0
    break
  end
end
if flag == 0
  p 'No'
else
  p 'Yes'
end
