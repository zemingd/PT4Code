n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i).sort!

arr_max = arr[-1]
hs = Array.new(arr_max+1,true)
ans = 0

(n-1).times do |i|
  next if hs[arr[i]] == false
  v = arr[i] * 2
  while v <= arr[-1] do
    hs[v] = false
    v += arr[i]
  end
  if arr[i] == arr[i+1]
    hs[arr[i]] = false
  end
end

arr.each do |x|
  if hs[x] == true
    ans += 1
  end
end

print ans