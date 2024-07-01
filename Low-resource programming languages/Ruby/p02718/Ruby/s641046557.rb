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
a.each do |val|
  if val < SK
    break
  else
    max.push(val)
  end
end
if max.size == M
  puts "Yes"
else
  puts "No"
end