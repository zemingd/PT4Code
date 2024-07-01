def suma(arr)
  sum = 0
  arr.each do |val|
    sum += val
  end
  return sum
end

N,M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
sum= suma(A)
max=[]
SK = sum * (1/(4*M.to_f))
M.times do |i|
  val = 0
  A.each do |j|
    val = [val, j].max unless max.include?(j)
  end
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