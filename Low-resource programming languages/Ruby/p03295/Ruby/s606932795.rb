N,M = gets.split(" ").map(&:to_i)
a=[]; b =[]
M.times do |i|
  a[i],b[i] = gets.split(" ").map(&:to_i)
end
l = a[0]; r = b[0]
cnt = 1
1.upto(M-1) do |i|
  if a[i] < r
    l = a[i]
    if r > b[i]
      r = b[i]
    end
  else
    cnt += 1
    l = a[i]; r = b[i]
  end
end
puts cnt