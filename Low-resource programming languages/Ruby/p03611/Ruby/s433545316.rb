n = gets.to_i
a = gets.split(" ").map(&:to_i)
x = [0]*(100000)

for i in 0..n-1 do
    if a[i] == 0
        x[0] = x[0] + 1
        x[1] = x[1] + 1
    elsif a[i] == 99999
        x[99998] = x[99998] + 1
        x[99999] = x[99999] + 1
    else
        x[a[i] - 1] = x[a[i] - 1] + 1
        x[a[i] + 1] = x[a[i] + 1] + 1
        x[a[i]] = x[a[i]] + 1
    end
end
 
 puts x.max