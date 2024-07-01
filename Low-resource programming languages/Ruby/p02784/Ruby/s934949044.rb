h,n = gets.split(" ").map(&:to_i)
AN = gets.split(" ").map(&:to_i)

if AN.length == n && AN.sum >=h
  p 'Yes'
else
  p 'No'
end