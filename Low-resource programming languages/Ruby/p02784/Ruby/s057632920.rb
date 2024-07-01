h,n = gets.split(" ").map(&:to_i)
number=1
AN = gets.split.map(&:to_i)
p AN
if AN.size == n && AN.sum >=h
  p 'Yes'
else
  p 'No'
end