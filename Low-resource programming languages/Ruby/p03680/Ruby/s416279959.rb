n = gets.to_i
a = n.times.map { gets.to_i }
arr = Array.new(n + 1, false)
arr[1] = true
res = -1
hist = []
na = 1
i = 0
while true
  i += 1
  break if hist.include?(na)
  if arr[na]
    arr[na] = false
    arr[a[na - 1]] = true
    hist << na
    na = a[na - 1]
  else
    break
  end
  if !(arr[0...2] + arr[3..-1]).any? & arr[2]
    res = i
    break
  end
end
p res

