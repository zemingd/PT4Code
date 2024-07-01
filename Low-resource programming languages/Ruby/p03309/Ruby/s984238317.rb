n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
tmp,ans = 0,0

for i in 0..(n-1) do
    tmp +=( a[i] - (i + 1)).abs
end

b = (tmp.to_f/n).floor

for j in 0..(n-1) do
  ans += ( a[j] -(j+1+b)).abs
end

puts ans