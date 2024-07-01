n = gets.chomp.to_i
u = []
v = []
w = []
leaf2line = []
(n+1).times do |i|
  leaf2line[i] = []
end
(n-1).times do |nn|
  u[nn],v[nn],w[nn] = gets.chomp.split.collect{ |item| item.to_i}
  leaf2line[u[nn]].push(nn)
  leaf2line[v[nn]].push(nn)
end

result = []
result[0] = false
result[1] = 1
result[n] = nil
def another(i)
  return 1 if i == 0
  return 0
end

dicide_list = []
finish_list = [1]
linen_arr = leaf2line[1]
idx = 1
while result.include?(nil)
  linen_arr.each do |one|
    another_leaf = u[one] == idx ? v[one]: u[one]
    next if (dicide_list.include?(another_leaf) || finish_list.include?(another_leaf))
    result[another_leaf] = w[one]%2==0 ? result[idx] : another(result[idx])
    unless (dicide_list.include?(another_leaf) || finish_list.include?(another_leaf))
      dicide_list.push(another_leaf)
    end
  end
  finish_list.push(idx)
  idx = dicide_list.pop
  linen_arr = leaf2line[idx]
end
1.upto(n) do |ii|
  puts result[ii]
end