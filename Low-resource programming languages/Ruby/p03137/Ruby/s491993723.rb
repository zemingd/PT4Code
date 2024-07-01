n, m = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)
ans =0
sum = 0
l = []
if n>=m
  ans =0
else
  x = x.sort  
  path = x[m-1] - x[0]
  
  (0 .. m-2).each do |i|
    l << x[i+1] - x[i]
  end
  l = l.sort
  
  (0 .. n-2).each do |i|
    sum += l[l.length-1-i]
  end
  ans = path - sum
end


puts ans