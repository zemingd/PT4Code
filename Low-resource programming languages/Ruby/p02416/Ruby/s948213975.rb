while
x = gets.to_i
if x == 0;break
end
i = 10 ** 1000
n = 0
a = []
while 1 <= i do
    a[n] = x / i
    x = x % i
    i /= 10
    n += 1
end
puts a.sum
end
    
