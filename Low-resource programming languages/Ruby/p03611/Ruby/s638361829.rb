n = gets.to_i
a = gets.split(" ").map(&:to_i)
x = [0,0,0,0,0,0,0,0,0,0]

for i in 0..n-1 do
    if a[i] == 0
        x[0] = x[0] + 1
        X[1] = x[1] + 1
    elsif a[i] == 9
        x[8] = x[8] + 1
        X[9] = x[9] + 1
    else
        x[a[i] - 1] = x[a[i] - 1] + 1
        x[a[i] + 1] = x[a[i] + 1] + 1
        x[a[i]] = x[a[i]] + 1
    end
end
 
 puts x.max