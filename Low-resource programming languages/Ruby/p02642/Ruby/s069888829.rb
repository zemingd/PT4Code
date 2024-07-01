n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
arr = Array.new(10**6+1,true)
ans = 0

for i in 1..(10**6 / a[0])
  arr[i*a[0]] = false
end
if n > 1
  ans += 1 if a[0] != a[1]
end

for i in 1..n-1
  if a[i] != a[i-1] && arr[a[i]]
    for j in 1..(10**6 / a[i])
      arr[j*a[i]] = false
    end
    if n > i+1
      ans += 1 if a[i] != a[i+1]
    else
      ans += 1
    end
  end
end
puts ans