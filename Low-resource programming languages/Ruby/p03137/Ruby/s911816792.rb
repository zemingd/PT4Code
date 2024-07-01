inputs = STDIN.readlines.map{|line|line.split().map{|l| l.to_i}}
n = inputs[0][0]
m = inputs[0][1]
x = inputs[1].sort
if m == 1 || n >= m then
    puts(0)
else
    diff = []
    for i in 1..(m - 1) do
        diff.push(x[i] - x[i-1])
    end
    diff.sort!
    puts(diff.slice(0, m - n).sum)
end