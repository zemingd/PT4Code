N = gets.to_i
a = gets.split.map(&:to_i)

a = a.sort

i = N-1
edge_1, edge_2 = 0, 0
while i>0 do
  if a[i]==a[i-1] then
    if edge_1==0 then
      edge_1 = a[i]
    else
      edge_2 = a[i]
      break
    end
    i -= 2
  else
    i -= 1
  end
end
p edge_1 * edge_2