def suma(arr)
  sum = 0
  arr.each do |val|
    sum += val
  end
  return sum
end

N,M = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
sum= suma(a)
a = a.sort.reverse
max=[]
SK = sum * (1/(4*M.to_f))
i = 0
a.each do |val|
  break if i >= M
  if val < SK
    break
  else
    max.push(val)
  end
  i+=1
end
if max.size == M
  puts "Yes"
else
  puts "No"
end