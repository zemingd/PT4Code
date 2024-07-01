n,k = gets.split.map(&:to_i)
p_k = gets.split.map(&:to_i)
p_k = p_k.map{|n| (n+1.0)/2.0}
plus = []
plus[0] = p_k[0]
for i in 1..(n-1)
    plus[i] = p_k[i]+plus[i-1]
end
if n == k 
    puts plus[-1]
    exit
end
max = 0
sum = 0
for i in k..(n-1)
    sum = plus[i]-plus[i-k]
    if max < sum
        max = sum
    end
end
puts max