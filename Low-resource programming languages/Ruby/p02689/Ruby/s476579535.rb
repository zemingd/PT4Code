n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ar = Array.new(n).map{Array.new}
m.times do
  a,b = gets.split.map(&:to_i)
  ar[a-1] << h[b-1]
  ar[b-1] << h[a-1]
end

ans = 0
for i in 0..(n-1)
  if ar[i] == [] || ar[i].max < h[i]
    ans += 1
  end
end
puts ans