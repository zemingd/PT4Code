a,b,c,k = gets.split.map(&:to_i)
aa = [1]*a
bb = [0]*b
cc = [-1]*c
array = aa+bb+cc
ans = 0
for i in 0..(k-1)
  ans += array[i]
end
puts ans