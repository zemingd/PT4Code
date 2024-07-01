input = gets.split
n = input[0].to_i
k = input[1].to_i
arr = gets.split
total = 0

if k >= n
  print 0
else
  arr = arr.sort{|a, b| a.to_i <=> b.to_i }
  size = n - k
  for i in 0...size
    total += arr[i].to_i
  end
  print total
end