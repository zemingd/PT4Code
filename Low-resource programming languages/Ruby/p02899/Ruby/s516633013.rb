n=gets.to_i
a=gets.split(' ').map(&:to_i)

b=Array.new(n+1)

for i in 1..n
  b[a[i-1]-1]= i
end

for i in 0..n-1
  p b[i]
end
