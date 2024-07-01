n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = 0
for i in 0..n-k do
  ar = a[i..i+k-1]
  b = ar.inject(:+) 
  if b > sum
    sum = b
  end
end
ex = (sum + k)/2.to_f
p ex