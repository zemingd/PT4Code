n = gets.to_i
h = gets.split.map(&:to_i)
count = 0
ans = 0
0.upto(n-2) do |i|
  if h[i] >= h[i+1]
    count+=1
  else
    count=0
  end
  ans = count if count > ans
end
puts ans