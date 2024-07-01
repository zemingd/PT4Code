n = gets.to_i
arr = gets.chop.split.map(&:to_i)
min = arr.first
cnt = 0
for i in 0..n-1 do
  if min >= arr[i]
    cnt += 1
    min = arr[i]
  end
end
puts cnt
