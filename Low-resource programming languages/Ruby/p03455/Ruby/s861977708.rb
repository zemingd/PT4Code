N = gets.to_i
a = []
for i in 0...N do
    a << gets.split
    for j in 0...3 do
        a[i][j] = a[i][j].to_i
    end
end

a.unshift([0,0,0])
msg = ""
for i in 0...N do
    noko_time = a[i+1][0] - a[i][0] - (a[i+1][1] - a[i][1]).abs
    if ((noko_time - (a[i+1][2] - a[i][2]).abs)%2 == 0) && (noko_time >= 0) then
        msg = "Yes"
    else
        msg = "No"
        break
    end
end
print msg