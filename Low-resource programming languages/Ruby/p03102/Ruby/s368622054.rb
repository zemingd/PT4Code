n,m,c = gets.split().map(&:to_i)
b = gets.split()

num = 0
for i in 1..n do
    a = gets.split()
    sum = 0
    for j in 1..m do
       sum = sum + a[j-1].to_i*b[j-1].to_i 
    end
    num = num + 1 if sum + c > 0
end

p num
