n = gets.to_i
ps = gets.split.map(&:to_i)
i = 1
len = ps.length
cnt = 0
while(i < len - 1) do
  cnt += 1 if [ps[i], ps[i+1], ps[i-1]].sort[1] == ps[i]
  i+=1
end
puts cnt