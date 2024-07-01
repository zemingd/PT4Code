def suma(arr)
  sum = 0
  arr.each do |val|
    sum += val
  end
  return sum
end

N,M = gets.chomp.split(" ").map{&:to_f}
A = gets.chomp.split(" ").map{&:to_i}
max = []
sum= suma(A)
M.times do |i|
  res = 1
  max[i] = 0
  A.each do |j|
    max[i] = [max[i], j].max
  end
  if max[i] < 1/(4*M)
    res = 0
    break
  end
end

if res == 1
  puts "Yes"
else
  puts "No"
end